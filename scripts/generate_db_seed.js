const fs = require('fs');
const path = require('path');

const db = require('../db-full.json');

const outFile = path.join(__dirname, '..', 'db_seed.sql');

const esc = (str) => {
  if (str === null || str === undefined) return 'NULL';
  return `'${String(str).replace(/'/g, "''")}'`;
};

const uuid = () => {
  // Simple UUID v4 generator (not cryptographically secure)
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, (c) => {
    const r = (Math.random() * 16) | 0;
    const v = c === 'x' ? r : (r & 0x3) | 0x8;
    return v.toString(16);
  });
};

const write = (content) => {
  fs.appendFileSync(outFile, content + '\n');
};

const start = () => {
  fs.writeFileSync(outFile, '/* Auto-generated seed file from db-full.json */\n');
  write('BEGIN;');
  write('');
  write('-- Clear existing data');
  write('TRUNCATE videos, conversation_messages, conversation_blocks, ai_summary_conversations, ai_summaries, timestamps, highlight_tags, highlights, episode_details, episode_people, people, episode_tags, episodes RESTART IDENTITY CASCADE;');
  write('');
};

const finish = () => {
  write('COMMIT;');
};

const insertEpisodes = () => {
  const episodes = db.episodes || [];
  write('-- episodes');
  episodes.forEach((ep) => {
    const cols = ['slug', 'title', 'banner', 'month', 'duration', 'youtube_share_link', 'featured'];
    const vals = [ep.slug, ep.title, ep.banner, ep.month, ep.duration, ep.youtubeShareLink, ep.featured];
    write(`INSERT INTO episodes (${cols.join(', ')}) VALUES (${vals.map(esc).join(', ')});`);
  });
  write('');
};

const insertTags = () => {
  write('-- episode_tags');
  (db.episodes || []).forEach((ep) => {
    const slug = ep.slug;
    const tags = ep.tags || [];
    tags.forEach((tag) => {
      write(`INSERT INTO episode_tags (episode_id, tag)
SELECT id, ${esc(tag)} FROM episodes WHERE slug = ${esc(slug)};`);
    });
  });
  write('');
};

const insertPeople = () => {
  write('-- people + episode_people');
  const personMap = new Map();
  (db.episodes || []).forEach((ep) => {
    const add = (person, role) => {
      if (!person || !person.name) return;
      const key = person.name;
      if (!personMap.has(key)) {
        personMap.set(key, person.profileImage || '');
      }
    };
    (ep.guestExperts || []).forEach((p) => add(p, 'guest'));
    (ep.indexExperts || []).forEach((p) => add(p, 'index'));
  });

  personMap.forEach((image, name) => {
    write(`INSERT INTO people (name, profile_image) VALUES (${esc(name)}, ${esc(image)});`);
  });
  write('');

  write('-- episode_people');
  (db.episodes || []).forEach((ep) => {
    const slug = ep.slug;
    const insertRole = (person, role) => {
      if (!person || !person.name) return;
      write(`INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, ${esc(role)}
FROM episodes e
JOIN people p ON p.name = ${esc(person.name)}
WHERE e.slug = ${esc(slug)};`);
    };

    (ep.guestExperts || []).forEach((p) => insertRole(p, 'guest'));
    (ep.indexExperts || []).forEach((p) => insertRole(p, 'index'));
  });
  write('');
};

const insertEpisodeDetails = () => {
  write('-- episode_details');
  (db.episodesDetails || []).forEach((ed) => {
    const slug = ed.slug;
    const description = JSON.stringify(ed.description || []);
    write(`INSERT INTO episode_details (episode_id, description, youtube_link, youtube_share_link)
SELECT e.id, ${esc(description)}, ${esc(ed.youtubeLink || '')}, ${esc(ed.youtubeShareLink || '')}
FROM episodes e
WHERE e.slug = ${esc(slug)};`);
  });
  write('');
};

const insertHighlights = () => {
  write('-- highlights');
  (db.episodesDetails || []).forEach((ed) => {
    const slug = ed.slug;
    (ed.highlights || []).forEach((h) => {
      write(`INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, ${esc(h.banner)}, ${esc(h.title)}, ${esc(h.month)}, ${esc(h.duration)}, ${esc(h.youtubeLink)}, ${esc(h.youtubeShareLink)}
FROM episodes e
WHERE e.slug = ${esc(slug)};`);

      (h.tags || []).forEach((tag) => {
        write(`INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, ${esc(tag)}
FROM highlights h
JOIN episodes e ON e.slug = ${esc(slug)}
WHERE h.episode_id = e.id AND h.title = ${esc(h.title)};`);
      });
    });
  });
  write('');
};

const insertTimestamps = () => {
  write('-- timestamps');
  (db.episodesDetails || []).forEach((ed) => {
    const slug = ed.slug;
    (ed.timestamps || []).forEach((ts) => {
      write(`INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, ${esc(ts.from)}, ${esc(ts.to)}, ${esc(ts.title)}
FROM episodes e
WHERE e.slug = ${esc(slug)};`);
    });
  });
  write('');
};

const insertAiSummaries = () => {
  write('-- ai_summaries + ai_summary_conversations');
  (db.episodesDetails || []).forEach((ed) => {
    const slug = ed.slug;
    (ed.aiSummaries || []).forEach((ai) => {
      write(`WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, ${esc(ai.index)}, ${esc(ai.title)}, ${esc(ai.subtitle || null)}
  FROM episodes e
  WHERE e.slug = ${esc(slug)}
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text(${esc(JSON.stringify(ai.conversations || []))}) WITH ORDINALITY t(msg, seq);`);
    });
  });
  write('');
};

const insertConversations = () => {
  write('-- conversation_blocks + conversation_messages');
  (db.episodesDetails || []).forEach((ed) => {
    const slug = ed.slug;
    (ed.conversations || []).forEach((block) => {
      const title = block.title || null;
      write(`WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, ${esc(title)}
  FROM episodes e
  WHERE e.slug = ${esc(slug)}
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset(${esc(JSON.stringify(block.conversations || []))}) AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);
`);
    });
  });
  write('');
};

const insertVideos = () => {
  write('-- videos');
  (db.videos || []).forEach((v) => {
    write(`INSERT INTO videos (banner, title, month, duration, youtube_link, youtube_share_link)
VALUES (${esc(v.banner)}, ${esc(v.title)}, ${esc(v.month)}, ${esc(v.duration)}, ${esc(v.youtubeLink)}, ${esc(v.youtubeShareLink)});`);
  });
  write('');
};

start();
insertEpisodes();
insertTags();
insertPeople();
insertEpisodeDetails();
insertHighlights();
insertTimestamps();
insertAiSummaries();
insertConversations();
insertVideos();
finish();

console.log('db_seed.sql generated successfully.');

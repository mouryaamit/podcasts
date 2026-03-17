-- Database schema for Podcasts API
-- Postgres SQL DDL

-- 1) episodes
CREATE TABLE episodes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT NOT NULL UNIQUE,
  title TEXT NOT NULL,
  banner TEXT NOT NULL,
  subtext TEXT NOT NULL,
  month TEXT NOT NULL,
  duration TEXT NOT NULL,
  youtube_share_link TEXT NOT NULL,
  featured BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_episodes_featured ON episodes(featured);

-- 2) episode_tags
CREATE TABLE episode_tags (
  episode_id UUID NOT NULL REFERENCES episodes(id) ON DELETE CASCADE,
  tag TEXT NOT NULL,
  PRIMARY KEY (episode_id, tag)
);

-- 3) people
CREATE TABLE people (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  profile_image TEXT NOT NULL,
  description TEXT
);

-- 4) episode_people (guests & index experts)
CREATE TABLE episode_people (
  episode_id UUID NOT NULL REFERENCES episodes(id) ON DELETE CASCADE,
  person_id UUID NOT NULL REFERENCES people(id) ON DELETE CASCADE,
  role TEXT NOT NULL,
  PRIMARY KEY (episode_id, person_id, role)
);

-- 5) episode_details
CREATE TABLE episode_details (
  episode_id UUID PRIMARY KEY REFERENCES episodes(id) ON DELETE CASCADE,
  description JSONB NOT NULL,
  youtube_link TEXT NOT NULL,
  youtube_share_link TEXT NOT NULL
);

-- 6) highlights
CREATE TABLE highlights (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  episode_id UUID NOT NULL REFERENCES episodes(id) ON DELETE CASCADE,
  banner TEXT NOT NULL,
  title TEXT NOT NULL,
  month TEXT NOT NULL,
  duration TEXT NOT NULL,
  youtube_link TEXT NOT NULL,
  youtube_share_link TEXT NOT NULL
);

CREATE INDEX idx_highlights_episode_id ON highlights(episode_id);

-- 6a) highlight_tags
CREATE TABLE highlight_tags (
  highlight_id UUID NOT NULL REFERENCES highlights(id) ON DELETE CASCADE,
  tag TEXT NOT NULL,
  PRIMARY KEY (highlight_id, tag)
);

-- 7) timestamps
CREATE TABLE timestamps (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  episode_id UUID NOT NULL REFERENCES episodes(id) ON DELETE CASCADE,
  from_time TEXT NOT NULL,
  to_time TEXT NOT NULL,
  title TEXT NOT NULL
);

CREATE INDEX idx_timestamps_episode_id ON timestamps(episode_id);

-- 8) ai_summaries
CREATE TABLE ai_summaries (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  episode_id UUID NOT NULL REFERENCES episodes(id) ON DELETE CASCADE,
  summary_index TEXT NOT NULL,
  title TEXT NOT NULL,
  subtitle TEXT
);

CREATE INDEX idx_ai_summaries_episode_id ON ai_summaries(episode_id);

-- 8a) ai_summary_conversations
CREATE TABLE ai_summary_conversations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  ai_summary_id UUID NOT NULL REFERENCES ai_summaries(id) ON DELETE CASCADE,
  sequence INT NOT NULL,
  message TEXT NOT NULL,
  UNIQUE (ai_summary_id, sequence)
);

-- 9) conversation_blocks
CREATE TABLE conversation_blocks (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  episode_id UUID NOT NULL REFERENCES episodes(id) ON DELETE CASCADE,
  title TEXT
);

CREATE INDEX idx_conversation_blocks_episode_id ON conversation_blocks(episode_id);

-- 9a) conversation_messages
CREATE TABLE conversation_messages (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  block_id UUID NOT NULL REFERENCES conversation_blocks(id) ON DELETE CASCADE,
  sequence INT NOT NULL,
  speaker TEXT NOT NULL,
  text TEXT NOT NULL,
  from_time TEXT,
  to_time TEXT,
  UNIQUE (block_id, sequence)
);

-- 10) videos
CREATE TABLE videos (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  banner TEXT NOT NULL,
  title TEXT NOT NULL,
  month TEXT NOT NULL,
  duration TEXT NOT NULL,
  youtube_link TEXT NOT NULL,
  youtube_share_link TEXT NOT NULL
);

-- Optional: helper function to keep updated_at current
CREATE OR REPLACE FUNCTION trigger_set_timestamp()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER episodes_set_timestamp
BEFORE UPDATE ON episodes
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

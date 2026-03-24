-- Database schema for Podcasts API
-- MySQL DDL

-- 1) episodes
CREATE TABLE episodes (
  id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  slug VARCHAR(255) NOT NULL UNIQUE,
  title VARCHAR(255) NOT NULL,
  banner VARCHAR(255) NOT NULL,
  month VARCHAR(50) NOT NULL,
  duration VARCHAR(50) NOT NULL,
  youtube_share_link VARCHAR(255) NOT NULL,
  featured BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE INDEX idx_episodes_featured ON episodes(featured);

-- 2) episode_tags
CREATE TABLE episode_tags (
  episode_id CHAR(36) NOT NULL,
  tag VARCHAR(100) NOT NULL,
  PRIMARY KEY (episode_id, tag),
  FOREIGN KEY (episode_id) REFERENCES episodes(id) ON DELETE CASCADE
);

-- 3) people
CREATE TABLE people (
  id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  name VARCHAR(255) NOT NULL,
  profile_image VARCHAR(255) NOT NULL,
  description TEXT
);

-- 4) episode_people (guests & index experts)
CREATE TABLE episode_people (
  episode_id CHAR(36) NOT NULL,
  person_id CHAR(36) NOT NULL,
  role VARCHAR(50) NOT NULL,
  PRIMARY KEY (episode_id, person_id, role),
  FOREIGN KEY (episode_id) REFERENCES episodes(id) ON DELETE CASCADE,
  FOREIGN KEY (person_id) REFERENCES people(id) ON DELETE CASCADE
);

-- 5) episode_details
CREATE TABLE episode_details (
  episode_id CHAR(36) PRIMARY KEY,
  description JSON NOT NULL,
  youtube_link VARCHAR(255) NOT NULL,
  youtube_share_link VARCHAR(255) NOT NULL,
  FOREIGN KEY (episode_id) REFERENCES episodes(id) ON DELETE CASCADE
);

-- 6) highlights
CREATE TABLE highlights (
  id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  episode_id CHAR(36) NOT NULL,
  banner VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  month VARCHAR(50) NOT NULL,
  duration VARCHAR(50) NOT NULL,
  youtube_link VARCHAR(255) NOT NULL,
  youtube_share_link VARCHAR(255) NOT NULL,
  FOREIGN KEY (episode_id) REFERENCES episodes(id) ON DELETE CASCADE
);

CREATE INDEX idx_highlights_episode_id ON highlights(episode_id);

-- 6a) highlight_tags
CREATE TABLE highlight_tags (
  highlight_id CHAR(36) NOT NULL,
  tag VARCHAR(100) NOT NULL,
  PRIMARY KEY (highlight_id, tag),
  FOREIGN KEY (highlight_id) REFERENCES highlights(id) ON DELETE CASCADE
);

-- 7) timestamps
CREATE TABLE timestamps (
  id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  episode_id CHAR(36) NOT NULL,
  from_time VARCHAR(50) NOT NULL,
  to_time VARCHAR(50) NOT NULL,
  title VARCHAR(255) NOT NULL,
  FOREIGN KEY (episode_id) REFERENCES episodes(id) ON DELETE CASCADE
);

CREATE INDEX idx_timestamps_episode_id ON timestamps(episode_id);

-- 8) ai_summaries
CREATE TABLE ai_summaries (
  id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  episode_id CHAR(36) NOT NULL,
  summary_index VARCHAR(50) NOT NULL,
  title VARCHAR(255) NOT NULL,
  subtitle TEXT,
  FOREIGN KEY (episode_id) REFERENCES episodes(id) ON DELETE CASCADE
);

CREATE INDEX idx_ai_summaries_episode_id ON ai_summaries(episode_id);

-- 8a) ai_summary_conversations
CREATE TABLE ai_summary_conversations (
  id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  ai_summary_id CHAR(36) NOT NULL,
  sequence INT NOT NULL,
  message TEXT NOT NULL,
  UNIQUE (ai_summary_id, sequence),
  FOREIGN KEY (ai_summary_id) REFERENCES ai_summaries(id) ON DELETE CASCADE
);

-- 9) conversation_blocks
CREATE TABLE conversation_blocks (
  id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  episode_id CHAR(36) NOT NULL,
  title VARCHAR(255),
  FOREIGN KEY (episode_id) REFERENCES episodes(id) ON DELETE CASCADE
);

CREATE INDEX idx_conversation_blocks_episode_id ON conversation_blocks(episode_id);

-- 9a) conversation_messages
CREATE TABLE conversation_messages (
  id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  block_id CHAR(36) NOT NULL,
  sequence INT NOT NULL,
  speaker VARCHAR(255) NOT NULL,
  text TEXT NOT NULL,
  from_time VARCHAR(50),
  to_time VARCHAR(50),
  UNIQUE (block_id, sequence),
  FOREIGN KEY (block_id) REFERENCES conversation_blocks(id) ON DELETE CASCADE
);

-- 10) videos
CREATE TABLE videos (
  id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
  banner VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  month VARCHAR(50) NOT NULL,
  duration VARCHAR(50) NOT NULL,
  youtube_link VARCHAR(255) NOT NULL,
  youtube_share_link VARCHAR(255) NOT NULL
);

-- MySQL automatically handles updated_at timestamp via ON UPDATE CURRENT_TIMESTAMP

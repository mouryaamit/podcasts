# Database Schema (Recommended)

This document describes a normalized relational schema (Postgres/MySQL) that matches the current JSON-based API in this repo.

It is designed to help a Java developer (or any backend engineer) build a database-backed version of the API.

---

## Core Entities

### 1) `episodes`
Represents an episode summary (used by `/episodes` endpoint).

| Column         | Type        | Notes |
|---------------|-------------|-------|
| `id`          | UUID / BIGINT (PK) | Auto-generated primary key |
| `slug`        | TEXT / VARCHAR(255) | Unique index |
| `title`       | TEXT        | |
| `banner`      | TEXT        | |
| `subtext`     | TEXT        | |
| `month`       | TEXT        | |
| `duration`    | TEXT        | |
| `youtube_share_link` | TEXT | |
| `featured`    | BOOLEAN     | |

### 2) `episode_tags`
Many-to-many tags for `episodes`.

| Column      | Type             | Notes |
|------------|------------------|-------|
| `episode_id` | UUID / BIGINT  | FK -> `episodes(id)` |
| `tag`       | TEXT            | Tag value |

### 3) `people`
A reusable table for guests and index experts.

| Column        | Type      | Notes |
|--------------|-----------|-------|
| `id`         | UUID / BIGINT (PK) | |
| `name`       | TEXT      | |
| `profile_image` | TEXT   | |
| `description` | TEXT     | Optional |

### 4) `episode_guests`
Join table for episode guest experts.

| Column       | Type      | Notes |
|-------------|-----------|-------|
| `episode_id` | UUID / BIGINT | FK -> `episodes(id)` |
| `person_id`  | UUID / BIGINT | FK -> `people(id)` |
| `role`       | TEXT | (optional) e.g., "guest" or "index" |

### 5) `episode_details`
Extended episode data used by `/episodes?slug=` endpoint.

| Column           | Type      | Notes |
|------------------|-----------|-------|
| `episode_id`     | UUID / BIGINT (PK, FK) | References `episodes(id)` |
| `description`    | TEXT[] / JSONB | Array of paragraphs |
| `youtube_link`   | TEXT      | |
| `youtube_share_link` | TEXT | |

This table is 1:1 with `episodes`.

### 6) `highlights`
Highlights associated to an episode.

| Column       | Type      | Notes |
|-------------|-----------|-------|
| `id`        | UUID / BIGINT (PK) | |
| `episode_id`| UUID / BIGINT | FK -> `episodes(id)` |
| `banner`    | TEXT      | |
| `title`     | TEXT      | |
| `month`     | TEXT      | |
| `duration`  | TEXT      | |
| `youtube_link` | TEXT   | |
| `youtube_share_link` | TEXT | |

#### `highlight_tags`
Optional tag list (same as episode tags).

| Column       | Type      | Notes |
|-------------|-----------|-------|
| `highlight_id` | UUID / BIGINT | FK -> `highlights(id)` |
| `tag`        | TEXT      | |

### 7) `timestamps`
Episode timestamp markers (used in `EpisodeDetail.timestamps`).

| Column      | Type      | Notes |
|------------|-----------|-------|
| `id`       | UUID / BIGINT (PK) | |
| `episode_id` | UUID / BIGINT | FK -> `episodes(id)` |
| `from_time` | TEXT | Example: "0:57" |
| `to_time`   | TEXT | Example: "1:41" |
| `title`     | TEXT |

### 8) `ai_summaries`
AI-generated summaries (used in `EpisodeDetail.aiSummaries`).

| Column        | Type      | Notes |
|--------------|-----------|-------|
| `id`         | UUID / BIGINT (PK) | |
| `episode_id` | UUID / BIGINT | FK -> `episodes(id)` |
| `summary_index` | TEXT | The `index` field in JSON |
| `title`      | TEXT |
| `subtitle`   | TEXT | Optional |

#### `ai_summary_conversations`
Linked list of conversation strings for each AI summary.

| Column          | Type      | Notes |
|----------------|-----------|-------|
| `id`           | UUID / BIGINT (PK) | |
| `ai_summary_id` | UUID / BIGINT | FK -> `ai_summaries(id)` |
| `message`      | TEXT | The conversation line |
| `sequence`     | INT  | Order in the list |

### 9) `conversation_blocks`
Represents grouped conversation blocks (used in `EpisodeDetail.conversations`).

| Column         | Type      | Notes |
|----------------|-----------|-------|
| `id`          | UUID / BIGINT (PK) | |
| `episode_id`  | UUID / BIGINT | FK -> `episodes(id)` |
| `title`       | TEXT | Optional |

#### `conversation_messages`
Individual messages in a conversation block.

| Column           | Type      | Notes |
|------------------|-----------|-------|
| `id`            | UUID / BIGINT (PK) | |
| `block_id`      | UUID / BIGINT | FK -> `conversation_blocks(id)` |
| `speaker`       | TEXT | |
| `text`          | TEXT | |
| `from_time`     | TEXT | Optional |
| `to_time`       | TEXT | Optional |
| `sequence`      | INT  | Order in block |

### 10) `videos`
Represents the `/videos` endpoint results.

| Column      | Type      | Notes |
|------------|-----------|-------|
| `id`       | UUID / BIGINT (PK) | |
| `banner`   | TEXT      | |
| `title`    | TEXT      | |
| `month`    | TEXT      | |
| `duration` | TEXT      | |
| `youtube_link` | TEXT | |
| `youtube_share_link` | TEXT | |

---

## Indexing Suggestions

- `episodes.slug` should be unique and indexed.
- Foreign-key columns (`episode_id`, `person_id`, etc.) should be indexed for joins.
- Text columns used for filtering (e.g., `featured`) should be indexed in large datasets.

---

## Notes

- In the current JSON-based implementation, `episodes` and `episodeDetails` are separate JSON arrays. In a DB-backed design, they should be joined by `episode_id`.
- If your Java stack uses an ORM (Hibernate / JPA), you can map these tables to entities like `Episode`, `EpisodeDetail`, `Highlight`, `Video`, etc.
- For tags (and other lists), the simplest relational approach is to use an associative table rather than a JSON array.

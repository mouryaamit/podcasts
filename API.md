# Podcasts API (Request/Response Reference)

## Conventions

- All list endpoints are **paginated** using the same response structure.
- Pagination query parameters:
  - `page` (optional): 1-based page number. Defaults to `1`.
  - `perPage` (fixed at `10` in this API, but a database-backed service may allow configuring it).
- Response wrapper format:
  ```json
  {
    "total": 123,
    "page": 1,
    "perPage": 10,
    "items": [...]
  }
  ```

---

## 1) GET /episodes

Fetches a list of episodes. Supports filtering by `featured` and `slug`.

### Query parameters

| Name     | Type    | Required | Description |
|---------|---------|----------|-------------|
| `page`  | integer | No       | Page number (1-based) |
| `featured` | boolean | No    | Filter for `featured` episodes. Accepts `true`, `false`, `1`, `0` |
| `slug`  | string  | No       | Fetch a single episode by slug (returns a paginated wrapper with 1 item)

### Response

- **200 OK**: Paginated list (or single item for `slug`).
- **404 Not Found**: When `slug` is provided but no episode matches.

#### Example: List episodes (page 1)

Request:
```
GET /episodes?page=1
```

Response:
```json
{
  "total": 26,
  "page": 1,
  "perPage": 10,
  "items": [
    {
      "banner": "Explore_Budget_cover.webp",
      "title": "MSMEs at a Turning Point: Budget 2026, FTAs, and the Road Ahead",
      "slug": "msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead",
      "subtext": "India's Union Budget 2026 arrives as MSMEs show cautious recovery...",
      "tags": ["MSME Conversations"],
      "month": "February 2026",
      "duration": "45 min",
      "guestExperts": [
        { "profileImage": "unnikrishnan.webp", "name": "Mr. Unnikrishnan Kottekkat" },
        { "profileImage": "Lavesh.webp", "name": "Dr. Laveesh Bhandari" },
        { "profileImage": "anil.webp", "name": "Mr. Anil Bharadwaj" }
      ],
      "indexExperts": [
        { "profileImage": "sumita_circle_img.webp", "name": "Dr. Sumita Kale" },
        { "profileImage": "narsi_circle_img.webp", "name": "Mr. Narasimhan V" }
      ],
      "youtubeShareLink": "https://youtu.be/eL6ee7hfAqo?si=4ytuSofESouU66mC",
      "featured": true
    }
    // ... up to 10 items total
  ]
}
```

#### Example: Featured episodes

Request:
```
GET /episodes?featured=true&page=1
```

Response:
```json
{
  "total": 7,
  "page": 1,
  "perPage": 10,
  "items": [
    {
      "banner": "Explore_Budget_cover.webp",
      "title": "MSMEs at a Turning Point: Budget 2026, FTAs, and the Road Ahead",
      "slug": "msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead",
      "subtext": "India's Union Budget 2026 arrives as MSMEs show cautious recovery...",
      "tags": ["MSME Conversations"],
      "month": "February 2026",
      "duration": "45 min",
      "guestExperts": [ /* ... */ ],
      "indexExperts": [ /* ... */ ],
      "youtubeShareLink": "https://youtu.be/eL6ee7hfAqo?si=4ytuSofESouU66mC",
      "featured": true
    }
    // ... more featured episodes
  ]
}
```

#### Example: Single episode by slug

Request:
```
GET /episodes?slug=msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead
```

Response:
```json
{
  "total": 1,
  "page": 1,
  "perPage": 1,
  "items": [
    {
      "title": "MSMEs at a Turning Point: Budget 2026, FTAs, and the Road Ahead",
      "slug": "msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead",
      "youtubeLink": "https://www.youtube.com/embed/eL6ee7hfAqo?playsinline=1&rel=0&modestbranding=1",
      "youtubeShareLink": "https://youtu.be/eL6ee7hfAqo?si=NNTopsNeGdYJwgX2",
      "description": [
        "India’s Union Budget 2026 arrives as MSMEs show cautious recovery...",
        "At the same time, panelists highlight persistent frictions..."
      ],
      "highlights": [
        {
          "banner": "Highlights_krishnan_details1_cover.webp",
          "title": "India's MSME Export Challenge: What's Holding Small Businesses Back?",
          "tags": ["MSME Conversations"],
          "month": "February 2026",
          "duration": "1.47 min",
          "youtubeLink": "https://www.youtube.com/embed/k2eFUgXjDNc?si=LNHdxtzmAgdnRWdY",
          "youtubeShareLink": "https://youtu.be/eL6ee7hfAqo?si=mjGVWGshmeU93uU4"
        }
        // ... more highlight objects
      ],
      "timestamps": [ /* ... */ ],
      "aiSummaries": [ /* ... */ ],
      "conversations": [ /* ... */ ],
      "guestExperts": [ /* ... */ ],
      "indexExperts": [ /* ... */ ]
    }
  ]
}
```


---

## 2) GET /videos

Returns paginated list of videos.

### Query parameters

| Name | Type    | Required | Description |
|------|---------|----------|-------------|
| `page` | integer | No | Page number (1-based) |

### Response

```json
{
  "total": 5,
  "page": 1,
  "perPage": 10,
  "items": [
    {
      "banner": "videos_content5_cover.webp",
      "title": "MSMEs Hit a 10-Month High — But Can It Last? | Sumpoorn Index",
      "month": "March 2026",
      "duration": "1.36 min",
      "youtubeLink": "https://www.youtube.com/embed/WKbICgDsjGE?si=Boq_NVtCATjipuh8",
      "youtubeShareLink": "https://youtu.be/WKbICgDsjGE?si=ipAel2Zdi1vUeEQM"
    }
    // ... more videos
  ]
}
```

---

## 3) GET /highlights

Returns paginated list of all highlights across episodes.

### Query parameters

| Name | Type    | Required | Description |
|------|---------|----------|-------------|
| `page` | integer | No | Page number (1-based) |

### Response

```json
{
  "total": 30,
  "page": 1,
  "perPage": 10,
  "items": [
    {
      "banner": "Highlights_krishnan_details1_cover.webp",
      "title": "India's MSME Export Challenge: What's Holding Small Businesses Back?",
      "tags": ["MSME Conversations"],
      "month": "February 2026",
      "duration": "1.47 min",
      "youtubeLink": "https://www.youtube.com/embed/k2eFUgXjDNc?si=LNHdxtzmAgdnRWdY",
      "youtubeShareLink": "https://youtu.be/eL6ee7hfAqo?si=mjGVWGshmeU93uU4"
    }
    // ... more highlight items
  ]
}
```

---

## 4) GET /health

Health check endpoint. Always returns `200` if API is up.

### Response

```json
{
  "status": "ok",
  "uptime": 123.456
}
```

---

## Notes for Java developers (DB-backed implementation)

### 1) Pagination
- Use `page` and `perPage` (or derive perPage as constant 10).
- `total` should be total matching rows (not just returned rows).
- `items` is the current page of results.

### 2) Slug lookup
- Should return a paginated wrapper with `total=1` and a single item in `items`.
- If not found, return `404`.

### 3) Featured filtering
- Parse the `featured` query param as boolean (`true`, `false`, `1`, `0`).
- Filter rows based on `featured` boolean column.

### 4) Schema pointers (from `interface.ts`)
The model shapes in `interface.ts` match the JSON structures used here.

- `Episode` / `EpisodeDetail` model (including `highlights`)
- `Highlight` model (same shape as highlights in the array)
- `Video` model

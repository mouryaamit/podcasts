import express from 'express';
import type { Request, Response } from 'express';
import * as data from './db-full.json';
import type {
  Episode,
  EpisodeDetail,
  Highlight,
  Video,
  EpisodeResponse,
  HighlightResponse,
  VideoResponse,
} from './interface';

const app = express();
const port = 3000;

// Type assertion for data
const typedData = data as {
  episodes: Episode[];
  episodesDetails: EpisodeDetail[];
  videos: Video[];
};

/**
 * GET /episodes - Get episodes with optional filtering by slug or featured status
 */
app.get('/episodes', (req: Request, res: Response<EpisodeResponse | any>): void => {
  const { slug, featured } = req.query;

  if (slug) {
    const episode = typedData.episodesDetails.find(
      (ep) => ep.slug === slug
    );
    if (episode) {
      res.json({
        total: 1,
        page: 1,
        perPage: 1,
        items: [episode],
      });
      return;
    }
    res.status(404).json({ error: 'Episode not found' });
    return;
  }

  if (featured !== undefined) {
    const isFeatured =
      String(featured).toLowerCase() === 'true' || featured === '1';
    const filtered = typedData.episodes.filter(
      (ep) => ep.featured === isFeatured
    );
    const total = filtered.length;
    const page = Math.max(1, parseInt(req.query.page as string, 10) || 1);
    const perPage = 10;
    const offset = (page - 1) * perPage;
    const items = filtered.slice(offset, offset + perPage);
    res.json({
      total,
      page,
      perPage,
      items,
    });
    return;
  }

  const total = typedData.episodes.length;
  const page = Math.max(1, parseInt(req.query.page as string, 10) || 1);
  const perPage = 10;
  const offset = (page - 1) * perPage;
  const items = typedData.episodes.slice(offset, offset + perPage);

  res.json({
    total,
    page,
    perPage,
    items,
  });
});

/**
 * GET /videos - Get videos with pagination
 */
app.get('/videos', (req: Request, res: Response<VideoResponse>): void => {
  const total = typedData.videos.length;
  const page = Math.max(1, parseInt(req.query.page as string, 10) || 1);
  const perPage = 10;
  const offset = (page - 1) * perPage;
  const items = typedData.videos.slice(offset, offset + perPage);

  res.json({
    total,
    page,
    perPage,
    items,
  });
});

/**
 * GET /highlights - Get highlights with pagination
 */
app.get(
  '/highlights',
  (req: Request, res: Response<HighlightResponse>): void => {
    const highlights = typedData.episodesDetails.flatMap(
      (ep) => ep.highlights || []
    );
    const total = highlights.length;
    const page = Math.max(1, parseInt(req.query.page as string, 10) || 1);
    const perPage = 10;
    const offset = (page - 1) * perPage;
    const items = highlights.slice(offset, offset + perPage);

    res.json({
      total,
      page,
      perPage,
      items,
    });
  }
);

/**
 * GET /health - Health check endpoint
 */
app.get('/health', (req: Request, res: Response): void => {
  res.json({ status: 'ok', uptime: process.uptime() });
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});

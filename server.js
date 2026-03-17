const express = require('express');
const app = express();
const port = 3000;

const data = require('./db-full.json');

/**
 * @typedef {import('./interface').Episode} Episode
 * @typedef {import('./interface').EpisodeDetail} EpisodeDetail
 * @typedef {import('./interface').Highlight} Highlight
 * @typedef {import('./interface').Video} Video
 * @typedef {import('./interface').EpisodeResponse} EpisodeResponse
 * @typedef {import('./interface').HighlightResponse} HighlightResponse
 * @typedef {import('./interface').VideoResponse} VideoResponse
 */

/**
 * GET /episodes - Get episodes with optional filtering by slug or featured status
 * @returns {EpisodeResponse}
 */
app.get('/episodes', (req, res) => {
  const { slug, featured } = req.query;

  if (slug) {
    const episode = data.episodesDetails.find(ep => ep.slug === slug);
    if (episode) {
      return res.json({
        total: 1,
        page: 1,
        perPage: 1,
        items: [episode],
      });
    }
    return res.status(404).json({ error: 'Episode not found' });
  }

  if (featured !== undefined) {
    const isFeatured = String(featured).toLowerCase() === 'true' || featured === '1';
    const filtered = data.episodes.filter(ep => ep.featured === isFeatured);
    const total = filtered.length;
    const page = Math.max(1, parseInt(req.query.page, 10) || 1);
    const perPage = 10;
    const offset = (page - 1) * perPage;
    const items = filtered.slice(offset, offset + perPage);
    return res.json({
      total,
      page,
      perPage,
      items,
    });
  }

  const total = data.episodes.length;
  const page = Math.max(1, parseInt(req.query.page, 10) || 1);
  const perPage = 10;
  const offset = (page - 1) * perPage;
  const items = data.episodes.slice(offset, offset + perPage);

  res.json({
    total,
    page,
    perPage,
    items,
  });
});

/**
 * GET /videos - Get videos with pagination
 * @returns {VideoResponse}
 */
app.get('/videos', (req, res) => {
  const total = data.videos.length;
  const page = Math.max(1, parseInt(req.query.page, 10) || 1);
  const perPage = 10;
  const offset = (page - 1) * perPage;
  const items = data.videos.slice(offset, offset + perPage);

  res.json({
    total,
    page,
    perPage,
    items,
  });
});

/**
 * GET /highlights - Get highlights with pagination
 * @returns {HighlightResponse}
 */
app.get('/highlights', (req, res) => {
  const highlights = data.episodesDetails.flatMap(ep => ep.highlights || []);
  const total = highlights.length;
  const page = Math.max(1, parseInt(req.query.page, 10) || 1);
  const perPage = 10;
  const offset = (page - 1) * perPage;
  const items = highlights.slice(offset, offset + perPage);

  res.json({
    total,
    page,
    perPage,
    items,
  });
});

app.get('/health', (req, res) => {
  res.json({ status: 'ok', uptime: process.uptime() });
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
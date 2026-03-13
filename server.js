const express = require('express');
const app = express();
const port = 3000;

const data = require('./db-full.json');

app.get('/episodes', (req, res) => {
  const { slug, featured } = req.query;

  if (slug) {
    const episode = data.episodesDetails.find(ep => ep.slug === slug);
    if (episode) {
      return res.json(episode);
    }
    return res.status(404).json({ error: 'Episode not found' });
  }

  if (featured !== undefined) {
    const isFeatured = String(featured).toLowerCase() === 'true' || featured === '1';
    const filtered = data.episodes.filter(ep => ep.featured === isFeatured);
    return res.json(filtered);
  }

  res.json(data.episodes);
});

app.get('/videos', (req, res) => {
  res.json(data.videos);
});

app.get('/highlights', (req, res) => {
  const highlights = data.episodesDetails.flatMap(ep => ep.highlights || []);
  res.json(highlights);
});

app.get('/health', (req, res) => {
  res.json({ status: 'ok', uptime: process.uptime() });
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
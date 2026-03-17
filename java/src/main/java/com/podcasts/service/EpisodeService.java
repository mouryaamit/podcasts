package com.podcasts.service;

import com.podcasts.dto.EpisodeResponse;
import com.podcasts.model.Episode;
import com.podcasts.repository.EpisodeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@Transactional(readOnly = true)
public class EpisodeService {

    @Autowired
    private EpisodeRepository episodeRepository;

    public List<EpisodeResponse> getAllEpisodes() {
        return episodeRepository.findAll().stream()
                .map(this::convertToResponse)
                .collect(Collectors.toList());
    }

    public Optional<EpisodeResponse> getEpisodeById(UUID id) {
        return episodeRepository.findById(id)
                .map(this::convertToResponse);
    }

    public Optional<EpisodeResponse> getEpisodeBySlug(String slug) {
        return episodeRepository.findBySlug(slug)
                .map(this::convertToResponse);
    }

    public List<EpisodeResponse> getFeaturedEpisodes() {
        return episodeRepository.findByFeaturedTrue().stream()
                .map(this::convertToResponse)
                .collect(Collectors.toList());
    }

    public List<EpisodeResponse> searchEpisodes(String searchTerm) {
        return episodeRepository.searchByTitleOrSubtext(searchTerm).stream()
                .map(this::convertToResponse)
                .collect(Collectors.toList());
    }

    public List<EpisodeResponse> getEpisodesByTag(String tag) {
        return episodeRepository.findByTagsContaining(tag).stream()
                .map(this::convertToResponse)
                .collect(Collectors.toList());
    }

    private EpisodeResponse convertToResponse(Episode episode) {
        EpisodeResponse response = new EpisodeResponse();
        response.setId(episode.getId().toString());
        response.setSlug(episode.getSlug());
        response.setTitle(episode.getTitle());
        response.setBanner(episode.getBanner());
        response.setSubtext(episode.getSubtext());
        response.setMonth(episode.getMonth());
        response.setDuration(episode.getDuration());
        response.setYoutubeShareLink(episode.getYoutubeShareLink());
        response.setFeatured(episode.isFeatured());
        response.setCreatedAt(episode.getCreatedAt());
        response.setUpdatedAt(episode.getUpdatedAt());
        response.setTags(episode.getTags());
        // Note: Nested objects would need additional mapping logic
        return response;
    }
}
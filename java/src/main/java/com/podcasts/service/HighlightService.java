package com.podcasts.service;

import com.podcasts.dto.HighlightResponse;
import com.podcasts.model.Highlight;
import com.podcasts.repository.HighlightRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@Transactional(readOnly = true)
public class HighlightService {

    @Autowired
    private HighlightRepository highlightRepository;

    public List<HighlightResponse> getAllHighlights() {
        return highlightRepository.findAll().stream()
                .map(this::convertToResponse)
                .collect(Collectors.toList());
    }

    public List<HighlightResponse> getHighlightsByEpisodeId(UUID episodeId) {
        return highlightRepository.findByEpisodeId(episodeId).stream()
                .map(this::convertToResponse)
                .collect(Collectors.toList());
    }

    public Optional<HighlightResponse> getHighlightById(UUID id) {
        return highlightRepository.findById(id)
                .map(this::convertToResponse);
    }

    public List<HighlightResponse> searchHighlights(String searchTerm) {
        return highlightRepository.searchByTitle(searchTerm).stream()
                .map(this::convertToResponse)
                .collect(Collectors.toList());
    }

    public List<HighlightResponse> getHighlightsByTag(String tag) {
        return highlightRepository.findByTagsContaining(tag).stream()
                .map(this::convertToResponse)
                .collect(Collectors.toList());
    }

    private HighlightResponse convertToResponse(Highlight highlight) {
        return new HighlightResponse(
            highlight.getId().toString(),
            highlight.getEpisode().getId().toString(),
            highlight.getBanner(),
            highlight.getTitle(),
            highlight.getMonth(),
            highlight.getDuration(),
            highlight.getYoutubeLink(),
            highlight.getYoutubeShareLink(),
            highlight.getTags()
        );
    }
}
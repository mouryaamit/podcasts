package com.podcasts.controller;

import com.podcasts.dto.EpisodeResponse;
import com.podcasts.dto.PaginatedResponse;
import com.podcasts.service.EpisodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/episodes")
@CrossOrigin(origins = "*")
public class EpisodeController {

    @Autowired
    private EpisodeService episodeService;

    /**
     * GET /episodes - Get episodes with optional filtering by slug or featured status
     */
    @GetMapping
    public ResponseEntity<PaginatedResponse<EpisodeResponse>> getEpisodes(
            @RequestParam(required = false) String slug,
            @RequestParam(required = false) Boolean featured,
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int perPage) {

        if (slug != null) {
            Optional<EpisodeResponse> episode = episodeService.getEpisodeBySlug(slug);
            if (episode.isPresent()) {
                return ResponseEntity.ok(new PaginatedResponse<>(1, page, perPage, List.of(episode.get())));
            }
            return ResponseEntity.notFound().build();
        }

        if (featured != null) {
            List<EpisodeResponse> episodes = episodeService.getFeaturedEpisodes();
            int total = episodes.size();
            int offset = (page - 1) * perPage;
            List<EpisodeResponse> items = episodes.stream()
                    .skip(offset)
                    .limit(perPage)
                    .toList();
            return ResponseEntity.ok(new PaginatedResponse<>(total, page, perPage, items));
        }

        List<EpisodeResponse> allEpisodes = episodeService.getAllEpisodes();
        int total = allEpisodes.size();
        int offset = (page - 1) * perPage;
        List<EpisodeResponse> items = allEpisodes.stream()
                .skip(offset)
                .limit(perPage)
                .toList();

        return ResponseEntity.ok(new PaginatedResponse<>(total, page, perPage, items));
    }
}
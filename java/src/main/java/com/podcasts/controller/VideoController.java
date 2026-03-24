package com.podcasts.controller;

import com.podcasts.dto.PaginatedResponse;
import com.podcasts.dto.VideoResponse;
import com.podcasts.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/videos")
@CrossOrigin(origins = "*")
public class VideoController {

    @Autowired
    private VideoService videoService;

    /**
     * GET /videos - Get videos with pagination
     */
    @GetMapping
    public ResponseEntity<PaginatedResponse<VideoResponse>> getVideos(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int perPage) {

        List<VideoResponse> allVideos = videoService.getAllVideos();
        int total = allVideos.size();
        int offset = (page - 1) * perPage;
        List<VideoResponse> items = allVideos.stream()
                .skip(offset)
                .limit(perPage)
                .toList();

        return ResponseEntity.ok(new PaginatedResponse<>(total, page, perPage, items));
    }
}
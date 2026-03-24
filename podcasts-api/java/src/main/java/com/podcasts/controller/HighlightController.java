package com.podcasts.controller;

import com.podcasts.dto.HighlightResponse;
import com.podcasts.dto.PaginatedResponse;
import com.podcasts.service.HighlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/highlights")
@CrossOrigin(origins = "*")
public class HighlightController {

    @Autowired
    private HighlightService highlightService;

    /**
     * GET /highlights - Get highlights with pagination
     */
    @GetMapping
    public ResponseEntity<PaginatedResponse<HighlightResponse>> getHighlights(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int perPage) {

        List<HighlightResponse> allHighlights = highlightService.getAllHighlights();
        int total = allHighlights.size();
        int offset = (page - 1) * perPage;
        List<HighlightResponse> items = allHighlights.stream()
                .skip(offset)
                .limit(perPage)
                .toList();

        return ResponseEntity.ok(new PaginatedResponse<>(total, page, perPage, items));
    }
}
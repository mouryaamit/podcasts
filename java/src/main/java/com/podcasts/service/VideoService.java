package com.podcasts.service;

import com.podcasts.dto.VideoResponse;
import com.podcasts.model.Video;
import com.podcasts.repository.VideoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@Transactional(readOnly = true)
public class VideoService {

    @Autowired
    private VideoRepository videoRepository;

    public List<VideoResponse> getAllVideos() {
        return videoRepository.findAll().stream()
                .map(this::convertToResponse)
                .collect(Collectors.toList());
    }

    public Optional<VideoResponse> getVideoById(UUID id) {
        return videoRepository.findById(id)
                .map(this::convertToResponse);
    }

    public List<VideoResponse> searchVideos(String searchTerm) {
        return videoRepository.searchByTitle(searchTerm).stream()
                .map(this::convertToResponse)
                .collect(Collectors.toList());
    }

    private VideoResponse convertToResponse(Video video) {
        return new VideoResponse(
            video.getId().toString(),
            video.getBanner(),
            video.getTitle(),
            video.getMonth(),
            video.getDuration(),
            video.getYoutubeLink(),
            video.getYoutubeShareLink()
        );
    }
}
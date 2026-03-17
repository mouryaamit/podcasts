package com.podcasts.dto;

public class EpisodeDetailsResponse {

    private String episodeId;
    private String description;
    private String youtubeLink;
    private String youtubeShareLink;

    // Constructors
    public EpisodeDetailsResponse() {}

    public EpisodeDetailsResponse(String episodeId, String description, String youtubeLink, String youtubeShareLink) {
        this.episodeId = episodeId;
        this.description = description;
        this.youtubeLink = youtubeLink;
        this.youtubeShareLink = youtubeShareLink;
    }

    // Getters and Setters
    public String getEpisodeId() {
        return episodeId;
    }

    public void setEpisodeId(String episodeId) {
        this.episodeId = episodeId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getYoutubeLink() {
        return youtubeLink;
    }

    public void setYoutubeLink(String youtubeLink) {
        this.youtubeLink = youtubeLink;
    }

    public String getYoutubeShareLink() {
        return youtubeShareLink;
    }

    public void setYoutubeShareLink(String youtubeShareLink) {
        this.youtubeShareLink = youtubeShareLink;
    }
}
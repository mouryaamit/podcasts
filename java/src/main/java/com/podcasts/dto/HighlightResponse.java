package com.podcasts.dto;

import java.util.Set;

public class HighlightResponse {

    private String id;
    private String episodeId;
    private String banner;
    private String title;
    private String month;
    private String duration;
    private String youtubeLink;
    private String youtubeShareLink;
    private Set<String> tags;

    // Constructors
    public HighlightResponse() {}

    public HighlightResponse(String id, String episodeId, String banner, String title, String month, String duration, String youtubeLink, String youtubeShareLink, Set<String> tags) {
        this.id = id;
        this.episodeId = episodeId;
        this.banner = banner;
        this.title = title;
        this.month = month;
        this.duration = duration;
        this.youtubeLink = youtubeLink;
        this.youtubeShareLink = youtubeShareLink;
        this.tags = tags;
    }

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEpisodeId() {
        return episodeId;
    }

    public void setEpisodeId(String episodeId) {
        this.episodeId = episodeId;
    }

    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
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

    public Set<String> getTags() {
        return tags;
    }

    public void setTags(Set<String> tags) {
        this.tags = tags;
    }
}
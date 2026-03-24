package com.podcasts.dto;

public class VideoResponse {

    private String id;
    private String banner;
    private String title;
    private String month;
    private String duration;
    private String youtubeLink;
    private String youtubeShareLink;

    // Constructors
    public VideoResponse() {}

    public VideoResponse(String id, String banner, String title, String month, String duration, String youtubeLink, String youtubeShareLink) {
        this.id = id;
        this.banner = banner;
        this.title = title;
        this.month = month;
        this.duration = duration;
        this.youtubeLink = youtubeLink;
        this.youtubeShareLink = youtubeShareLink;
    }

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
}
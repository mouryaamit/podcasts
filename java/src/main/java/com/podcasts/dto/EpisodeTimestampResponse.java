package com.podcasts.dto;

public class EpisodeTimestampResponse {

    private String id;
    private String episodeId;
    private String fromTime;
    private String toTime;
    private String title;

    // Constructors
    public EpisodeTimestampResponse() {}

    public EpisodeTimestampResponse(String id, String episodeId, String fromTime, String toTime, String title) {
        this.id = id;
        this.episodeId = episodeId;
        this.fromTime = fromTime;
        this.toTime = toTime;
        this.title = title;
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

    public String getFromTime() {
        return fromTime;
    }

    public void setFromTime(String fromTime) {
        this.fromTime = fromTime;
    }

    public String getToTime() {
        return toTime;
    }

    public void setToTime(String toTime) {
        this.toTime = toTime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
package com.podcasts.dto;

import java.util.List;

public class AiSummaryResponse {

    private String id;
    private String episodeId;
    private String summaryIndex;
    private String title;
    private String subtitle;
    private List<AiSummaryConversationResponse> conversations;

    // Constructors
    public AiSummaryResponse() {}

    public AiSummaryResponse(String id, String episodeId, String summaryIndex, String title, String subtitle, List<AiSummaryConversationResponse> conversations) {
        this.id = id;
        this.episodeId = episodeId;
        this.summaryIndex = summaryIndex;
        this.title = title;
        this.subtitle = subtitle;
        this.conversations = conversations;
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

    public String getSummaryIndex() {
        return summaryIndex;
    }

    public void setSummaryIndex(String summaryIndex) {
        this.summaryIndex = summaryIndex;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public List<AiSummaryConversationResponse> getConversations() {
        return conversations;
    }

    public void setConversations(List<AiSummaryConversationResponse> conversations) {
        this.conversations = conversations;
    }
}
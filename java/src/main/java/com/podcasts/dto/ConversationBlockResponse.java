package com.podcasts.dto;

import java.util.List;

public class ConversationBlockResponse {

    private String id;
    private String episodeId;
    private String title;
    private List<ConversationMessageResponse> messages;

    // Constructors
    public ConversationBlockResponse() {}

    public ConversationBlockResponse(String id, String episodeId, String title, List<ConversationMessageResponse> messages) {
        this.id = id;
        this.episodeId = episodeId;
        this.title = title;
        this.messages = messages;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<ConversationMessageResponse> getMessages() {
        return messages;
    }

    public void setMessages(List<ConversationMessageResponse> messages) {
        this.messages = messages;
    }
}
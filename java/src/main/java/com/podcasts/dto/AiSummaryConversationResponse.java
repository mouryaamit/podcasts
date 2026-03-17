package com.podcasts.dto;

public class AiSummaryConversationResponse {

    private String id;
    private String aiSummaryId;
    private int sequence;
    private String message;

    // Constructors
    public AiSummaryConversationResponse() {}

    public AiSummaryConversationResponse(String id, String aiSummaryId, int sequence, String message) {
        this.id = id;
        this.aiSummaryId = aiSummaryId;
        this.sequence = sequence;
        this.message = message;
    }

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAiSummaryId() {
        return aiSummaryId;
    }

    public void setAiSummaryId(String aiSummaryId) {
        this.aiSummaryId = aiSummaryId;
    }

    public int getSequence() {
        return sequence;
    }

    public void setSequence(int sequence) {
        this.sequence = sequence;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
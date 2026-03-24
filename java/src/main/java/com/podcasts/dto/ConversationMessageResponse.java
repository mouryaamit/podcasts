package com.podcasts.dto;

public class ConversationMessageResponse {

    private String id;
    private String blockId;
    private int sequence;
    private String speaker;
    private String text;
    private String fromTime;
    private String toTime;

    // Constructors
    public ConversationMessageResponse() {}

    public ConversationMessageResponse(String id, String blockId, int sequence, String speaker, String text, String fromTime, String toTime) {
        this.id = id;
        this.blockId = blockId;
        this.sequence = sequence;
        this.speaker = speaker;
        this.text = text;
        this.fromTime = fromTime;
        this.toTime = toTime;
    }

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBlockId() {
        return blockId;
    }

    public void setBlockId(String blockId) {
        this.blockId = blockId;
    }

    public int getSequence() {
        return sequence;
    }

    public void setSequence(int sequence) {
        this.sequence = sequence;
    }

    public String getSpeaker() {
        return speaker;
    }

    public void setSpeaker(String speaker) {
        this.speaker = speaker;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
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
}
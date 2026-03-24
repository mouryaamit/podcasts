package com.podcasts.model;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "conversation_messages")
public class ConversationMessage {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "block_id", nullable = false)
    private ConversationBlock block;

    @Column(nullable = false)
    private int sequence;

    @Column(nullable = false)
    private String speaker;

    @Column(nullable = false)
    private String text;

    @Column
    private String fromTime;

    @Column
    private String toTime;

    // Constructors
    public ConversationMessage() {}

    public ConversationMessage(ConversationBlock block, int sequence, String speaker, String text, String fromTime, String toTime) {
        this.block = block;
        this.sequence = sequence;
        this.speaker = speaker;
        this.text = text;
        this.fromTime = fromTime;
        this.toTime = toTime;
    }

    // Getters and Setters
    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public ConversationBlock getBlock() {
        return block;
    }

    public void setBlock(ConversationBlock block) {
        this.block = block;
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
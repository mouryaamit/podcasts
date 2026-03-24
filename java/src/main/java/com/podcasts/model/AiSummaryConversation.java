package com.podcasts.model;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "ai_summary_conversations")
public class AiSummaryConversation {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ai_summary_id", nullable = false)
    private AiSummary aiSummary;

    @Column(nullable = false)
    private int sequence;

    @Column(nullable = false)
    private String message;

    // Constructors
    public AiSummaryConversation() {}

    public AiSummaryConversation(AiSummary aiSummary, int sequence, String message) {
        this.aiSummary = aiSummary;
        this.sequence = sequence;
        this.message = message;
    }

    // Getters and Setters
    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public AiSummary getAiSummary() {
        return aiSummary;
    }

    public void setAiSummary(AiSummary aiSummary) {
        this.aiSummary = aiSummary;
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
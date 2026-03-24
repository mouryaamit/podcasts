package com.podcasts.model;

import jakarta.persistence.*;
import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "ai_summaries")
public class AiSummary {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "episode_id", nullable = false)
    private Episode episode;

    @Column(nullable = false)
    private String summaryIndex;

    @Column(nullable = false)
    private String title;

    @Column
    private String subtitle;

    // Relationships
    @OneToMany(mappedBy = "aiSummary", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("sequence")
    private Set<AiSummaryConversation> conversations;

    // Constructors
    public AiSummary() {}

    public AiSummary(Episode episode, String summaryIndex, String title, String subtitle) {
        this.episode = episode;
        this.summaryIndex = summaryIndex;
        this.title = title;
        this.subtitle = subtitle;
    }

    // Getters and Setters
    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public Episode getEpisode() {
        return episode;
    }

    public void setEpisode(Episode episode) {
        this.episode = episode;
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

    public Set<AiSummaryConversation> getConversations() {
        return conversations;
    }

    public void setConversations(Set<AiSummaryConversation> conversations) {
        this.conversations = conversations;
    }
}
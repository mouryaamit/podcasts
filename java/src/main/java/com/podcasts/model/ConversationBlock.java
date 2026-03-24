package com.podcasts.model;

import jakarta.persistence.*;
import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "conversation_blocks")
public class ConversationBlock {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "episode_id", nullable = false)
    private Episode episode;

    @Column
    private String title;

    // Relationships
    @OneToMany(mappedBy = "block", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("sequence")
    private Set<ConversationMessage> messages;

    // Constructors
    public ConversationBlock() {}

    public ConversationBlock(Episode episode, String title) {
        this.episode = episode;
        this.title = title;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Set<ConversationMessage> getMessages() {
        return messages;
    }

    public void setMessages(Set<ConversationMessage> messages) {
        this.messages = messages;
    }
}
package com.podcasts.model;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "episode_details")
public class EpisodeDetails {

    @Id
    @Column(name = "episode_id")
    private UUID episodeId;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "episode_id", insertable = false, updatable = false)
    private Episode episode;

    @Column(nullable = false)
    private String description; // JSONB as String

    @Column(nullable = false)
    private String youtubeLink;

    @Column(nullable = false)
    private String youtubeShareLink;

    // Constructors
    public EpisodeDetails() {}

    public EpisodeDetails(Episode episode, String description, String youtubeLink, String youtubeShareLink) {
        this.episode = episode;
        this.episodeId = episode.getId();
        this.description = description;
        this.youtubeLink = youtubeLink;
        this.youtubeShareLink = youtubeShareLink;
    }

    // Getters and Setters
    public UUID getEpisodeId() {
        return episodeId;
    }

    public void setEpisodeId(UUID episodeId) {
        this.episodeId = episodeId;
    }

    public Episode getEpisode() {
        return episode;
    }

    public void setEpisode(Episode episode) {
        this.episode = episode;
        this.episodeId = episode != null ? episode.getId() : null;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
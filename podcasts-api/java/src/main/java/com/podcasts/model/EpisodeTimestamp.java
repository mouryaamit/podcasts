package com.podcasts.model;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "timestamps")
public class EpisodeTimestamp {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "episode_id", nullable = false)
    private Episode episode;

    @Column(nullable = false)
    private String fromTime;

    @Column(nullable = false)
    private String toTime;

    @Column(nullable = false)
    private String title;

    // Constructors
    public EpisodeTimestamp() {}

    public EpisodeTimestamp(Episode episode, String fromTime, String toTime, String title) {
        this.episode = episode;
        this.fromTime = fromTime;
        this.toTime = toTime;
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
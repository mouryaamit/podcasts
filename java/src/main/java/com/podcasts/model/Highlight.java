package com.podcasts.model;

import jakarta.persistence.*;
import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "highlights")
public class Highlight {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "episode_id", nullable = false)
    private Episode episode;

    @Column(nullable = false)
    private String banner;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String month;

    @Column(nullable = false)
    private String duration;

    @Column(nullable = false)
    private String youtubeLink;

    @Column(nullable = false)
    private String youtubeShareLink;

    // Relationships
    @ElementCollection
    @CollectionTable(name = "highlight_tags", joinColumns = @JoinColumn(name = "highlight_id"))
    @Column(name = "tag")
    private Set<String> tags;

    // Constructors
    public Highlight() {}

    public Highlight(Episode episode, String banner, String title, String month, String duration, String youtubeLink, String youtubeShareLink) {
        this.episode = episode;
        this.banner = banner;
        this.title = title;
        this.month = month;
        this.duration = duration;
        this.youtubeLink = youtubeLink;
        this.youtubeShareLink = youtubeShareLink;
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

    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
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

    public Set<String> getTags() {
        return tags;
    }

    public void setTags(Set<String> tags) {
        this.tags = tags;
    }
}
package com.podcasts.model;

import jakarta.persistence.*;
import java.time.Instant;
import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "episodes")
public class Episode {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column(nullable = false, unique = true)
    private String slug;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String banner;

    @Column(nullable = false)
    private String month;

    @Column(nullable = false)
    private String duration;

    @Column(nullable = false)
    private String youtubeShareLink;

    @Column(nullable = false)
    private boolean featured = false;

    @Column(nullable = false)
    private Instant createdAt;

    @Column(nullable = false)
    private Instant updatedAt;

    // Relationships
    @ElementCollection
    @CollectionTable(name = "episode_tags", joinColumns = @JoinColumn(name = "episode_id"))
    @Column(name = "tag")
    private Set<String> tags;

    @OneToMany(mappedBy = "episode", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<EpisodePerson> episodePeople;

    @OneToOne(mappedBy = "episode", cascade = CascadeType.ALL, orphanRemoval = true)
    private EpisodeDetails episodeDetails;

    @OneToMany(mappedBy = "episode", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Highlight> highlights;

    @OneToMany(mappedBy = "episode", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<EpisodeTimestamp> timestamps;

    @OneToMany(mappedBy = "episode", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<AiSummary> aiSummaries;

    @OneToMany(mappedBy = "episode", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<ConversationBlock> conversationBlocks;

    // Constructors
    public Episode() {}

    public Episode(String slug, String title, String banner, String subtext, String month, String duration, String youtubeShareLink, boolean featured) {
        this.slug = slug;
        this.title = title;
        this.banner = banner;
        this.subtext = subtext;
        this.month = month;
        this.duration = duration;
        this.youtubeShareLink = youtubeShareLink;
        this.featured = featured;
        this.createdAt = Instant.now();
        this.updatedAt = Instant.now();
    }

    // Getters and Setters
    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner;
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

    public String getYoutubeShareLink() {
        return youtubeShareLink;
    }

    public void setYoutubeShareLink(String youtubeShareLink) {
        this.youtubeShareLink = youtubeShareLink;
    }

    public boolean isFeatured() {
        return featured;
    }

    public void setFeatured(boolean featured) {
        this.featured = featured;
    }

    public Instant getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Instant createdAt) {
        this.createdAt = createdAt;
    }

    public Instant getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Instant updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Set<String> getTags() {
        return tags;
    }

    public void setTags(Set<String> tags) {
        this.tags = tags;
    }

    public Set<EpisodePerson> getEpisodePeople() {
        return episodePeople;
    }

    public void setEpisodePeople(Set<EpisodePerson> episodePeople) {
        this.episodePeople = episodePeople;
    }

    public EpisodeDetails getEpisodeDetails() {
        return episodeDetails;
    }

    public void setEpisodeDetails(EpisodeDetails episodeDetails) {
        this.episodeDetails = episodeDetails;
    }

    public Set<Highlight> getHighlights() {
        return highlights;
    }

    public void setHighlights(Set<Highlight> highlights) {
        this.highlights = highlights;
    }

    public Set<EpisodeTimestamp> getTimestamps() {
        return timestamps;
    }

    public void setTimestamps(Set<EpisodeTimestamp> timestamps) {
        this.timestamps = timestamps;
    }

    public Set<AiSummary> getAiSummaries() {
        return aiSummaries;
    }

    public void setAiSummaries(Set<AiSummary> aiSummaries) {
        this.aiSummaries = aiSummaries;
    }

    public Set<ConversationBlock> getConversationBlocks() {
        return conversationBlocks;
    }

    public void setConversationBlocks(Set<ConversationBlock> conversationBlocks) {
        this.conversationBlocks = conversationBlocks;
    }
}
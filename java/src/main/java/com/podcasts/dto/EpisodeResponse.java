package com.podcasts.dto;

import java.time.Instant;
import java.util.List;
import java.util.Set;

public class EpisodeResponse {

    private String id;
    private String slug;
    private String title;
    private String banner;
    private String subtext;
    private String month;
    private String duration;
    private String youtubeShareLink;
    private boolean featured;
    private Instant createdAt;
    private Instant updatedAt;
    private Set<String> tags;
    private List<EpisodePersonResponse> people;
    private EpisodeDetailsResponse details;
    private List<HighlightResponse> highlights;
    private List<EpisodeTimestampResponse> timestamps;
    private List<AiSummaryResponse> aiSummaries;
    private List<ConversationBlockResponse> conversationBlocks;

    // Constructors
    public EpisodeResponse() {}

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
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

    public String getSubtext() {
        return subtext;
    }

    public void setSubtext(String subtext) {
        this.subtext = subtext;
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

    public List<EpisodePersonResponse> getPeople() {
        return people;
    }

    public void setPeople(List<EpisodePersonResponse> people) {
        this.people = people;
    }

    public EpisodeDetailsResponse getDetails() {
        return details;
    }

    public void setDetails(EpisodeDetailsResponse details) {
        this.details = details;
    }

    public List<HighlightResponse> getHighlights() {
        return highlights;
    }

    public void setHighlights(List<HighlightResponse> highlights) {
        this.highlights = highlights;
    }

    public List<EpisodeTimestampResponse> getTimestamps() {
        return timestamps;
    }

    public void setTimestamps(List<EpisodeTimestampResponse> timestamps) {
        this.timestamps = timestamps;
    }

    public List<AiSummaryResponse> getAiSummaries() {
        return aiSummaries;
    }

    public void setAiSummaries(List<AiSummaryResponse> aiSummaries) {
        this.aiSummaries = aiSummaries;
    }

    public List<ConversationBlockResponse> getConversationBlocks() {
        return conversationBlocks;
    }

    public void setConversationBlocks(List<ConversationBlockResponse> conversationBlocks) {
        this.conversationBlocks = conversationBlocks;
    }
}
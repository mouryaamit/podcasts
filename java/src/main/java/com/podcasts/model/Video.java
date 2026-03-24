package com.podcasts.model;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "videos")
public class Video {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

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

    // Constructors
    public Video() {}

    public Video(String banner, String title, String month, String duration, String youtubeLink, String youtubeShareLink) {
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
}
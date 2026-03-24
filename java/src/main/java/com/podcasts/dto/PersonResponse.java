package com.podcasts.dto;

public class PersonResponse {

    private String id;
    private String name;
    private String profileImage;
    private String description;

    // Constructors
    public PersonResponse() {}

    public PersonResponse(String id, String name, String profileImage, String description) {
        this.id = id;
        this.name = name;
        this.profileImage = profileImage;
        this.description = description;
    }

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
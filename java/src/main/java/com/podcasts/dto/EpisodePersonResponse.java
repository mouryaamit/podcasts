package com.podcasts.dto;

public class EpisodePersonResponse {

    private String episodeId;
    private String personId;
    private String role;
    private PersonResponse person;

    // Constructors
    public EpisodePersonResponse() {}

    public EpisodePersonResponse(String episodeId, String personId, String role, PersonResponse person) {
        this.episodeId = episodeId;
        this.personId = personId;
        this.role = role;
        this.person = person;
    }

    // Getters and Setters
    public String getEpisodeId() {
        return episodeId;
    }

    public void setEpisodeId(String episodeId) {
        this.episodeId = episodeId;
    }

    public String getPersonId() {
        return personId;
    }

    public void setPersonId(String personId) {
        this.personId = personId;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public PersonResponse getPerson() {
        return person;
    }

    public void setPerson(PersonResponse person) {
        this.person = person;
    }
}
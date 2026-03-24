package com.podcasts.model;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Objects;
import java.util.UUID;

@Embeddable
public class EpisodePersonId implements Serializable {

    @Column(name = "episode_id")
    private UUID episodeId;

    @Column(name = "person_id")
    private UUID personId;

    @Column(name = "role")
    private String role;

    // Constructors
    public EpisodePersonId() {}

    public EpisodePersonId(UUID episodeId, UUID personId, String role) {
        this.episodeId = episodeId;
        this.personId = personId;
        this.role = role;
    }

    // Getters and Setters
    public UUID getEpisodeId() {
        return episodeId;
    }

    public void setEpisodeId(UUID episodeId) {
        this.episodeId = episodeId;
    }

    public UUID getPersonId() {
        return personId;
    }

    public void setPersonId(UUID personId) {
        this.personId = personId;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    // equals and hashCode
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EpisodePersonId that = (EpisodePersonId) o;
        return Objects.equals(episodeId, that.episodeId) &&
               Objects.equals(personId, that.personId) &&
               Objects.equals(role, that.role);
    }

    @Override
    public int hashCode() {
        return Objects.hash(episodeId, personId, role);
    }
}
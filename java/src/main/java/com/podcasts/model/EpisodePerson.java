package com.podcasts.model;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "episode_people")
public class EpisodePerson {

    @EmbeddedId
    private EpisodePersonId id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "episode_id", nullable = false, insertable = false, updatable = false)
    private Episode episode;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "person_id", nullable = false, insertable = false, updatable = false)
    private Person person;

    // Constructors
    public EpisodePerson() {}

    public EpisodePerson(Episode episode, Person person, String role) {
        this.episode = episode;
        this.person = person;
        this.id = new EpisodePersonId(episode.getId(), person.getId(), role);
    }

    // Getters and Setters
    public EpisodePersonId getId() {
        return id;
    }

    public void setId(EpisodePersonId id) {
        this.id = id;
    }

    public Episode getEpisode() {
        return episode;
    }

    public void setEpisode(Episode episode) {
        this.episode = episode;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public String getRole() {
        return id != null ? id.getRole() : null;
    }

    public void setRole(String role) {
        if (this.id == null) {
            this.id = new EpisodePersonId();
        }
        this.id.setRole(role);
    }
}
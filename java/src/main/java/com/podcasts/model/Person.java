package com.podcasts.model;

import jakarta.persistence.*;
import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "people")
public class Person {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String profileImage;

    @Column
    private String description;

    // Relationships
    @OneToMany(mappedBy = "person", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<EpisodePerson> episodePeople;

    // Constructors
    public Person() {}

    public Person(String name, String profileImage, String description) {
        this.name = name;
        this.profileImage = profileImage;
        this.description = description;
    }

    // Getters and Setters
    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
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

    public Set<EpisodePerson> getEpisodePeople() {
        return episodePeople;
    }

    public void setEpisodePeople(Set<EpisodePerson> episodePeople) {
        this.episodePeople = episodePeople;
    }
}
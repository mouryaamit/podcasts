package com.podcasts.repository;

import com.podcasts.model.Episode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface EpisodeRepository extends JpaRepository<Episode, java.util.UUID> {

    Optional<Episode> findBySlug(String slug);

    List<Episode> findByFeaturedTrue();

    @Query("SELECT e FROM Episode e WHERE LOWER(e.title) LIKE LOWER(CONCAT('%', :searchTerm, '%'))")
    List<Episode> searchByTitle(@Param("searchTerm") String searchTerm);

    List<Episode> findByTagsContaining(String tag);
}
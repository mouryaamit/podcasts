package com.podcasts.repository;

import com.podcasts.model.Highlight;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface HighlightRepository extends JpaRepository<Highlight, UUID> {

    List<Highlight> findByEpisodeId(UUID episodeId);

    @Query("SELECT h FROM Highlight h WHERE LOWER(h.title) LIKE LOWER(CONCAT('%', :searchTerm, '%'))")
    List<Highlight> searchByTitle(@Param("searchTerm") String searchTerm);

    List<Highlight> findByTagsContaining(String tag);
}
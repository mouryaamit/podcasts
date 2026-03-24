package com.podcasts.repository;

import com.podcasts.model.Video;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VideoRepository extends JpaRepository<Video, java.util.UUID> {

    @Query("SELECT v FROM Video v WHERE LOWER(v.title) LIKE LOWER(CONCAT('%', :searchTerm, '%'))")
    List<Video> searchByTitle(@Param("searchTerm") String searchTerm);
}
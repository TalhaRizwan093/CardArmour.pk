package com.cardarmour_backend.repositories;

import com.cardarmour_backend.models.CoachesEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CoachesRepo extends JpaRepository<CoachesEntity, Long>{

    @Query(value = "SELECT * FROM COACHES",nativeQuery = true)
    List<CoachesEntity> findAll();

}

package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.City;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CityRepository extends JpaRepository<City, Integer> {

    @Query(value="SELECT * from city",nativeQuery = true )
    List<City> getCities();


}

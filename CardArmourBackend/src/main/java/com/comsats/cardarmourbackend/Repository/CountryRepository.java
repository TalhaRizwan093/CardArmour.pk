package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CountryRepository extends JpaRepository<Country, Integer> {

    @Query(value="SELECT * from country",nativeQuery = true )
    List<Country> getCountries();

}

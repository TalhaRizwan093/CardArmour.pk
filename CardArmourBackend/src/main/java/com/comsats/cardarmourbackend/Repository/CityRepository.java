package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.City;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CityRepository extends JpaRepository<City, Integer> {

    @Query(value="SELECT * FROM CITY",nativeQuery = true)
    List<City> getAllCities();

    @Query(value="Select * from city where countryid = ?1",nativeQuery = true )
    List<City> getCityByCountryid(int countryid);

    @Query(value="Select city.cityid,city.name,city.countryid from city JOIN customer on customer.cityid = city.cityid where customerid = ?1",nativeQuery = true)
    City getCityByCustomerid(int customerid);

}

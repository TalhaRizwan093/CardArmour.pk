package com.comsats.cardarmourbackend.Service;
import com.comsats.cardarmourbackend.Repository.CityRepository;
import com.comsats.cardarmourbackend.model.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Service
public class CityService {

    @Autowired
    private CityRepository cityRepository;

    public List<City> getAllCities(){
        try{
            return cityRepository.getAllCities();
        } catch(Exception e){
            return null;
        }
    }

    public City getCity(int customerid){
        try{
            return cityRepository.getCityByCustomerid(customerid);
        } catch(Exception e){
            return  null;
        }
    }

    public List<City> getCityByCountryid(@RequestParam int countryid){
        try{
            return cityRepository.getCityByCountryid(countryid);
        } catch(Exception e){
            return null;
        }
    }

}

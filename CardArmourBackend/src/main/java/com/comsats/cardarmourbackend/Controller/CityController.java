package com.comsats.cardarmourbackend.Controller;


import com.comsats.cardarmourbackend.Repository.CityRepository;
import com.comsats.cardarmourbackend.model.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class CityController {

    @Autowired
    private CityRepository cityRepo;

    @PostMapping("/getCities")
    public List<City> getCities(@RequestParam int countryid){
        return cityRepo.getCities(countryid);
    }

    @PostMapping("/getCityByCustomer")
    public City getCity(@RequestParam int customerid){
        try{
            return cityRepo.getCityByCustomerid(customerid);
        } catch(Exception e){
            return  null;
        }
    }

}

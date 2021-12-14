package com.comsats.cardarmourbackend.Controller;
import com.comsats.cardarmourbackend.Service.CityService;
import com.comsats.cardarmourbackend.model.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class CityController {

    @Autowired
    private CityService cityService;

    @GetMapping("/getAllCities")
    public List<City> getAllCities(){
       return cityService.getAllCities();
    }

    @PostMapping("/getCityByCustomer")
    public City getCity(@RequestParam int customerid){
        return cityService.getCity(customerid);
    }

    @PostMapping("/getCities")
    public List<City> getCityByCountryid(@RequestParam int countryid){
        return cityService.getCityByCountryid(countryid);
    }

}

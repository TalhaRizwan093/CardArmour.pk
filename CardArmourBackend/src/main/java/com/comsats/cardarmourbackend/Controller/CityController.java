package com.comsats.cardarmourbackend.Controller;


import com.comsats.cardarmourbackend.Repository.CityRepository;
import com.comsats.cardarmourbackend.model.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin("*")
@RestController
public class CityController {

    @Autowired
    private CityRepository cityRepo;

    @GetMapping("/getCities")
    public List<City> getCities(){
        return cityRepo.getCities();
    }

}

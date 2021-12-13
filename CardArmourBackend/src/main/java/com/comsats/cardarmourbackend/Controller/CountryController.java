package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.CountryRepository;
import com.comsats.cardarmourbackend.model.Country;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class CountryController {

    @Autowired
    private CountryRepository countryRepo;

    @PostMapping("/getCountryByCustomer")
    public Country getCountry(@RequestParam int customerid){
        try{
            return countryRepo.getCountryByCustomerId(customerid);
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @GetMapping("/getCountries")
    public List<Country> getCountries(){
        return countryRepo.getCountries();
    }
}

package com.comsats.cardarmourbackend.Controller;
import com.comsats.cardarmourbackend.Service.CountryService;
import com.comsats.cardarmourbackend.model.Country;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class CountryController {

    @Autowired
    private CountryService countryService;

    @PostMapping("/getCountryByCustomer")
    public Country getCountry(@RequestParam int customerid){
        return countryService.getCountry(customerid);
    }

    @GetMapping("/getCountries")
    public List<Country> getCountries(){
        return countryService.getCountries();
    }
}

package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.CountryRepository;
import com.comsats.cardarmourbackend.model.Country;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Service
public class CountryService {

    @Autowired
    private CountryRepository countryRepository;

    public Country getCountry(@RequestParam int customerid){
        try{
            return countryRepository.getCountryByCustomerId(customerid);
        } catch (Exception e){
            return null;
        }
    }

    public List<Country> getCountries(){
        try{
            return countryRepository.getCountries();
        } catch(Exception e){
            return null;
        }

    }
}

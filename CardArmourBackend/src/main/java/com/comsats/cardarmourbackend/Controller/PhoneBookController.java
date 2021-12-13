package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.PhoneBookRepository;
import com.comsats.cardarmourbackend.model.PhoneBook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Random;

@CrossOrigin("*")
@RestController
public class PhoneBookController {

    @Autowired
    PhoneBookRepository phoneBookRepository;

    @PostMapping("/addPhoneNumber")
    boolean addPhoneNumber(@RequestBody PhoneBook phoneBook){
        try{
            phoneBook.setPhonenumberid(generateId());
            phoneBookRepository.addPhoneNumber(phoneBook.getPhonenumberid(),phoneBook.getPhonenumber(),phoneBook.getCustomerid());
        }catch(Exception e){

        }
        return true;
    }

    @PostMapping("/updatePhoneNumber")
    boolean updatePhoneNumber(@RequestBody PhoneBook phoneBook){
        try{
            phoneBookRepository.updatePhoneNumber(phoneBook.getPhonenumber(),phoneBook.getCustomerid());
        } catch(Exception e){

        }
        return true;
    }

    @PostMapping("/getPhoneNumber")
    PhoneBook getPhoneNumber(@RequestParam int customerid){
        try{
            return phoneBookRepository.getPhoneNumber(customerid);
        } catch(Exception e){
            return null;
        }
    }


    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }
}

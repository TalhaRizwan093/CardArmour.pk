package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Service.PhoneBookService;
import com.comsats.cardarmourbackend.model.PhoneBook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("*")
@RestController
public class PhoneBookController {

    @Autowired
    PhoneBookService phoneBookService;

    @PostMapping("/addPhoneNumber")
    public void addPhoneNumber(@RequestBody PhoneBook phoneBook){
        phoneBookService.addPhoneNumber(phoneBook);
    }

    @PostMapping("/updatePhoneNumber")
    public void updatePhoneNumber(@RequestBody PhoneBook phoneBook){
        phoneBookService.updatePhoneNumber(phoneBook);
    }

    @PostMapping("/getPhoneNumber")
    public PhoneBook getPhoneNumber(@RequestParam int customerid){
        return phoneBookService.getPhoneNumber(customerid);
    }

}
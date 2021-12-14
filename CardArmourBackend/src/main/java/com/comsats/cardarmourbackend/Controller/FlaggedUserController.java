package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Dto.FlaggedCustomerDto;
import com.comsats.cardarmourbackend.Service.FlaggedUserService;
import com.comsats.cardarmourbackend.model.FlaggedUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class FlaggedUserController {

    @Autowired
    private FlaggedUserService flaggedUserService;

    @PostMapping("/addToFlaggedUser")
    public void addToFlaggedUser(@RequestBody FlaggedUser flaggedUser){
     flaggedUserService.addToFlaggedUser(flaggedUser);
    }

    @PostMapping("/deleteFlaggedAccount")
    public void deleteFlaggedAccount(@RequestParam int flaggedid){
        flaggedUserService.deleteFlaggedAccount(flaggedid);
    }

    @GetMapping("/getAllFlaggedCustomers")
    public List<FlaggedCustomerDto> getAllFlaggedCustomers(){
        return flaggedUserService.getAllFlaggedCustomers();
    }

}
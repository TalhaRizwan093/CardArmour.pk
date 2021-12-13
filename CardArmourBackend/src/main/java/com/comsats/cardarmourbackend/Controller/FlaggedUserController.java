package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.FlaggedUserRepository;
import com.comsats.cardarmourbackend.model.FlaggedUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Random;

@CrossOrigin("*")
@RestController
public class FlaggedUserController {

    @Autowired
    private FlaggedUserRepository flaggedUserRepository;

    @PostMapping("/addToFlaggedUser")
    public void addToFlaggedUser(@RequestBody FlaggedUser flaggedUser){
     try{
         flaggedUser.setFlaggedid(generateId());
         flaggedUserRepository.addToFlaggedAccount(flaggedUser.getFlaggedid(),flaggedUser.getReason(),flaggedUser.getAdminAdminid(),flaggedUser.getCustomerCustomerid());
     } catch(Exception e){
     }
    }

    @PostMapping("/deleteFlaggedAccount")
    public void deleteFlaggedAccount(@RequestParam int flaggedid){
        try{
            flaggedUserRepository.deleteFlaggedUser(flaggedid);
        } catch(Exception e){

        }
    }

    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }
}

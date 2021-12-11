package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.UserRepository;

import com.comsats.cardarmourbackend.model.SystemUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Random;

@CrossOrigin("*")
@RestController
public class UserController {

    @Autowired
    private UserRepository userRepo;


    @PostMapping("/addNewUser")
    public boolean addUser(@RequestBody SystemUser user){
        SystemUser newUser = user;
        newUser.setUserid(generateId());
        try{
            userRepo.addNewUser(newUser.getUserid(), newUser.getUsername(), newUser.getPassword());
        } catch (Exception e){
            e.printStackTrace();
        }
        return true;

    }


    @PostMapping("/login")
    public ResponseEntity<SystemUser> login (@RequestBody SystemUser user){

        try{
            SystemUser user1 = userRepo.findByUsernamePassword(user.getUsername(),user.getPassword());
            if(user1!=null){
                return new ResponseEntity<SystemUser>(user1,HttpStatus.OK);
            } else {
                return new ResponseEntity("not found", HttpStatus.NOT_FOUND);
            }
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }



    @PostMapping("/getUserId")
    public int getIds(@RequestBody SystemUser user){
        return userRepo.getIds(user.getUsername(), user.getPassword());
    }

    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }
}

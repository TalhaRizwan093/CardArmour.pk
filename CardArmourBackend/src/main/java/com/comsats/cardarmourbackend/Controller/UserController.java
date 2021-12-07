package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.CustomerRepository;
import com.comsats.cardarmourbackend.Repository.UserRepository;
import com.comsats.cardarmourbackend.model.SystemUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@CrossOrigin("*")
@RestController
public class UserController {

    @Autowired
    private UserRepository userRepo;


    @PostMapping("/login")
    public ResponseEntity<SystemUser> login(@RequestBody SystemUser user){

        try{
            SystemUser user1 = userRepo.findByUsernamePassword(user.getUsername(),user.getPassword());
            if(user1!=null){
                return new ResponseEntity<SystemUser>(user1,HttpStatus.OK);
            } else {
                    return new ResponseEntity("not found",HttpStatus.NOT_FOUND);
            }
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

}

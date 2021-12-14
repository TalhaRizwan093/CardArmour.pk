package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Service.UserService;
import com.comsats.cardarmourbackend.model.SystemUser;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("*")
@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/addNewUser")
    public int addUser(@RequestBody SystemUser user){
        return userService.addUser(user);
    }

    @PostMapping("/login")
    public ResponseEntity<SystemUser> login (@RequestBody SystemUser user){
        return userService.login(user);
    }

    @PostMapping("/getUser")
    public SystemUser getUser(@RequestParam int userid){
        return userService.getUser(userid);
    }

    @PostMapping("/updateUser")
    public void updateUser(@RequestBody SystemUser user){
        userService.updateUser(user);
    }

    @PostMapping("/getUserId")
    public int getIds(@RequestBody SystemUser user){
        return userService.getIds(user);
    }

    @PostMapping("/deleteUser")
    public void deleteUser(@RequestParam int userid){
        userService.deleteUser(userid);
    }


}
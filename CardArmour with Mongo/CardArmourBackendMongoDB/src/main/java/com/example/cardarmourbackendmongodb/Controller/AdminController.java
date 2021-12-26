package com.example.cardarmourbackendmongodb.Controller;

import com.example.cardarmourbackendmongodb.Model.Admin;
import com.example.cardarmourbackendmongodb.Service.AdminService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("*")
@RestController
@AllArgsConstructor
public class AdminController {

    private final AdminService adminService;

    @PostMapping("/loginAsAdmin")
    public Admin login(@RequestParam String username, @RequestParam String password){
        return adminService.login(username,password);
    }

}

package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("*")
@RestController
public class AdminController {

    @Autowired
    private AdminService adminService;

    @PostMapping("/getAdminID")
    public int getAdmin(@RequestParam int userid){
        return adminService.getAdmin(userid);
    }

    @PostMapping("/checkAdmin")
    public boolean checkAdmin(@RequestParam int userid){
       return adminService.checkAdmin(userid);
    }

}

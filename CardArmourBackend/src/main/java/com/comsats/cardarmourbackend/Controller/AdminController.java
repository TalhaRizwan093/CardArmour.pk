package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.AdminRepository;
import com.comsats.cardarmourbackend.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("*")
@RestController
public class AdminController {

    @Autowired
    private AdminRepository adminRepository;

    @PostMapping("/getAdminID")
    public int getAdmin(@RequestParam int userid){
        try{
            return adminRepository.getAdminIdByUserid(userid);
        } catch(Exception e){
            return 0;
        }
    }

    @PostMapping("/checkAdmin")
    public boolean checkAdmin(@RequestParam int userid){
        try{
            Admin admin = new Admin();
            admin = adminRepository.authenticateAdmin(userid);
            if(admin!=null){
                return true;
            } else {
                return false;
            }
        } catch (Exception e){
            return false;
        }
    }
}

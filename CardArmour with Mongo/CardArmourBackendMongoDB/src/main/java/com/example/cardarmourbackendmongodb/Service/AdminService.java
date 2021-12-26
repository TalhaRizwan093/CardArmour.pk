package com.example.cardarmourbackendmongodb.Service;

import com.example.cardarmourbackendmongodb.Model.Admin;
import com.example.cardarmourbackendmongodb.Repository.AdminRespository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@AllArgsConstructor
@Service
public class AdminService {

    private final AdminRespository adminRespository;

    public Admin login(String username, String password){
        try{
            return adminRespository.findByUsernameAndPassword(username,password);
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
}

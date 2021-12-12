package com.comsats.cardarmourbackend.Controller;


import com.comsats.cardarmourbackend.Repository.SettingRepository;
import com.comsats.cardarmourbackend.model.Setting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("*")
@RestController
public class SettingController {

    @Autowired
    private SettingRepository settingRepository;

    @PostMapping("/getSetting")
    public Setting getSetting(@RequestParam int userid){
        try{
            return settingRepository.getSettingById(userid);
        } catch (Exception e){
            return null;
        }
    }

}

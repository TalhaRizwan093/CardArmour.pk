package com.comsats.cardarmourbackend.Controller;


import com.comsats.cardarmourbackend.Repository.SettingRepository;
import com.comsats.cardarmourbackend.model.Setting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Random;
import java.util.Set;

@CrossOrigin("*")
@RestController
public class SettingController {

    @Autowired
    private SettingRepository settingRepository;

    @PostMapping("/addSetting")
    public void addSetting(@RequestBody Setting setting){
        try{
            setting.setSettingid(generateId());
            settingRepository.addSetting(setting.getSettingid(),setting.getLanguage(),setting.getTimeformat(),setting.getLightDarkMode(),setting.getUserid());
        } catch(Exception e){
        }
    }

    @PostMapping("/updateSetting")
    public void updateSetting(@RequestBody Setting setting){
        try{
            settingRepository.updateSetting(setting.getLanguage(),setting.getTimeformat(),setting.getLightDarkMode(),setting.getUserid());
        }catch(Exception e){

        }
    }

    @PostMapping("/getSetting")
    public Setting getSetting(@RequestParam int userid){
        try{
            return settingRepository.getSettingById(userid);
        } catch (Exception e){
            return null;
        }
    }

    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }

}

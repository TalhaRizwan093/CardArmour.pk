package com.comsats.cardarmourbackend.Controller;


import com.comsats.cardarmourbackend.Repository.SettingRepository;
import com.comsats.cardarmourbackend.model.Setting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping("/updateSetting")
    public void updateSetting(@RequestBody Setting setting){
        try{
            settingRepository.updateSetting(setting.getLanguage(),setting.getTimeformat(),setting.getLightDarkMode(),setting.getUserid());
        }catch(Exception e){

        }
    }

    @PostMapping("/addSetting")
    public void addSetting(@RequestBody Setting setting){
        try{
            settingRepository.addSetting(setting.getSettingid(),setting.getLanguage(),setting.getTimeformat(),setting.getLightDarkMode(),setting.getUserid());
        } catch(Exception e){
        }
    }

}

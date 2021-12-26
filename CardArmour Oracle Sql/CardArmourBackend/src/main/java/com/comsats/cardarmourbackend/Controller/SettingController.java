package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Service.SettingService;
import com.comsats.cardarmourbackend.model.Setting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("*")
@RestController
public class SettingController {

    @Autowired
    private SettingService settingService;

    @PostMapping("/addSetting")
    public void addSetting(@RequestBody Setting setting){
        settingService.addSetting(setting);
    }

    @PostMapping("/updateSetting")
    public void updateSetting(@RequestBody Setting setting){
        settingService.updateSetting(setting);
    }

    @PostMapping("/getSetting")
    public Setting getSetting(@RequestParam int userid){
        return settingService.getSetting(userid);
    }

}

package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.SettingRepository;
import com.comsats.cardarmourbackend.model.Setting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SettingService {

    @Autowired
    private SettingRepository settingRepository;

    public void addSetting(Setting setting){
        try{
            setting.setSettingid(ID_Generator.generateID());
            settingRepository.addSetting(setting.getSettingid(),setting.getLanguage(),setting.getTimeformat(),setting.getLightDarkMode(),setting.getUserid());
        } catch(Exception e){
        }
    }

    public void updateSetting(Setting setting){
        try{
            settingRepository.updateSetting(setting.getLanguage(),setting.getTimeformat(),setting.getLightDarkMode(),setting.getUserid());
        }catch(Exception e){
        }
    }

    public Setting getSetting(int userid){
        try{
            return settingRepository.getSettingById(userid);
        } catch (Exception e){
            return null;
        }
    }
}
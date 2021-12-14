package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Setting;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface SettingRepository extends JpaRepository<Setting,Integer> {

    @Query(value="SELECT * FROM SETTING WHERE userid = ?1 ",nativeQuery = true)
    Setting getSettingById(int userid);

    @Query(value="INSERT INTO \"CARDARMOUR\".\"SETTING\" (SETTINGID, LANGUAGE, TIMEFORMAT, \"light/dark_mode\", USERID) VALUES (?1,?2,?3,?4,?5)",nativeQuery = true)
    void addSetting(int settingid,String language,String timeformat,String mode,int userid);

    @Query(value="UPDATE \"CARDARMOUR\".\"SETTING\" SET LANGUAGE = ?1, TIMEFORMAT = ?2, \"light/dark_mode\" = ?3 where userid = ?4",nativeQuery = true)
    void updateSetting(String language,String timeformat,String mode, int userid);

}
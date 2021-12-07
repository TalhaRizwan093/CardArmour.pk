package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Setting;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SettingRepository extends JpaRepository<Setting,Integer> {
}

package com.comsats.cardarmourbackend.Dto;

import java.sql.Timestamp;

public interface CustomerViewDto {
    int getCustomerid();

    Integer getAge();

    int getCityid();

    String getCnic();

    Timestamp getDob();

    String getEmail();

    String getGender();

    String getName();

    int getUserid();
}


package com.comsats.cardarmourbackend.dto;


import java.sql.Timestamp;

public interface CustomerView {
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


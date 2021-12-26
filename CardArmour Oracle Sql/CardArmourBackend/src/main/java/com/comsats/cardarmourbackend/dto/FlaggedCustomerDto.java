package com.comsats.cardarmourbackend.Dto;

import java.sql.Timestamp;

public interface FlaggedCustomerDto {

    int getFlaggedid();

    int getAdmin_Adminid();

    int getCustomer_Customerid();

    String getReason();

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

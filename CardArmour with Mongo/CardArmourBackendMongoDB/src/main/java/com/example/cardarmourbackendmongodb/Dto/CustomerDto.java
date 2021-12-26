package com.example.cardarmourbackendmongodb.Dto;

import com.example.cardarmourbackendmongodb.Model.Location;

import java.util.List;

public class CustomerDto {

    private String username;
    private String password;
    private String name;
    private String gender;
    private String cnic;
    private String dateofbirth;
    private List<String> phonenumber;
    private String email;
    private Location location;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCnic() {
        return cnic;
    }

    public void setCnic(String cnic) {
        this.cnic = cnic;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }


    public List<String> getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(List<String> phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getEmail() {
        return email;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}

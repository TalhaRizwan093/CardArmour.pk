package com.comsats.cardarmourbackend.model;

import javax.persistence.*;

@Entity
public class Admin {
    private int adminid;
    private String name;
    private String gender;
    private String email;
    private int cityid;
    private int userid;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ADMINID")
    public int getAdminid() {
        return adminid;
    }

    public void setAdminid(int adminid) {
        this.adminid = adminid;
    }

    @Basic
    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "GENDER")
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Basic
    @Column(name = "EMAIL")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "CITYID")
    public int getCityid() {
        return cityid;
    }

    public void setCityid(int cityid) {
        this.cityid = cityid;
    }

    @Basic
    @Column(name = "USERID")
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Admin admin = (Admin) o;

        if (adminid != admin.adminid) return false;
        if (cityid != admin.cityid) return false;
        if (userid != admin.userid) return false;
        if (name != null ? !name.equals(admin.name) : admin.name != null) return false;
        if (gender != null ? !gender.equals(admin.gender) : admin.gender != null) return false;
        if (email != null ? !email.equals(admin.email) : admin.email != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = adminid;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (gender != null ? gender.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + cityid;
        result = 31 * result + userid;
        return result;
    }
}

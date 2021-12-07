package com.comsats.cardarmourbackend.model;

import javax.persistence.*;

@Entity
public class City {
    private int cityid;
    private String name;
    private int countryid;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CITYID")
    public int getCityid() {
        return cityid;
    }

    public void setCityid(int cityid) {
        this.cityid = cityid;
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
    @Column(name = "COUNTRYID")
    public int getCountryid() {
        return countryid;
    }

    public void setCountryid(int countryid) {
        this.countryid = countryid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        City city = (City) o;

        if (cityid != city.cityid) return false;
        if (countryid != city.countryid) return false;
        if (name != null ? !name.equals(city.name) : city.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cityid;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + countryid;
        return result;
    }
}

package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "LOCATION", schema = "LAB_MID", catalog = "")
public class LocationEntity {
    private boolean locationId;
    private String country;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "LOCATION_ID")
    public boolean isLocationId() {
        return locationId;
    }

    public void setLocationId(boolean locationId) {
        this.locationId = locationId;
    }

    @Basic
    @Column(name = "COUNTRY")
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LocationEntity that = (LocationEntity) o;

        if (locationId != that.locationId) return false;
        if (country != null ? !country.equals(that.country) : that.country != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (locationId ? 1 : 0);
        result = 31 * result + (country != null ? country.hashCode() : 0);
        return result;
    }
}

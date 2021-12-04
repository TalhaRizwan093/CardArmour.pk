package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "COACHES", schema = "LAB_MID", catalog = "")
public class CoachesEntity {
    private boolean coacheId;
    private String name;
    private String speciality;
    private String totalExperience;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "COACHE_ID")
    public boolean isCoacheId() {
        return coacheId;
    }

    public void setCoacheId(boolean coacheId) {
        this.coacheId = coacheId;
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
    @Column(name = "SPECIALITY")
    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    @Basic
    @Column(name = "TOTAL_EXPERIENCE")
    public String getTotalExperience() {
        return totalExperience;
    }

    public void setTotalExperience(String totalExperience) {
        this.totalExperience = totalExperience;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CoachesEntity that = (CoachesEntity) o;

        if (coacheId != that.coacheId) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (speciality != null ? !speciality.equals(that.speciality) : that.speciality != null) return false;
        if (totalExperience != null ? !totalExperience.equals(that.totalExperience) : that.totalExperience != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (coacheId ? 1 : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (speciality != null ? speciality.hashCode() : 0);
        result = 31 * result + (totalExperience != null ? totalExperience.hashCode() : 0);
        return result;
    }
}

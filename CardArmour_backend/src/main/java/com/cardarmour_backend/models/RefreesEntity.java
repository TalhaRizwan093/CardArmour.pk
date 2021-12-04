package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "REFREES", schema = "LAB_MID", catalog = "")
public class RefreesEntity {
    private boolean refreeId;
    private String experience;
    private String type;
    private String name;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "REFREE_ID")
    public boolean isRefreeId() {
        return refreeId;
    }

    public void setRefreeId(boolean refreeId) {
        this.refreeId = refreeId;
    }

    @Basic
    @Column(name = "EXPERIENCE")
    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    @Basic
    @Column(name = "TYPE")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RefreesEntity that = (RefreesEntity) o;

        if (refreeId != that.refreeId) return false;
        if (experience != null ? !experience.equals(that.experience) : that.experience != null) return false;
        if (type != null ? !type.equals(that.type) : that.type != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (refreeId ? 1 : 0);
        result = 31 * result + (experience != null ? experience.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }
}

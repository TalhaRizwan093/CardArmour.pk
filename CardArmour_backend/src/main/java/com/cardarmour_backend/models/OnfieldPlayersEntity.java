package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "ONFIELD_PLAYERS", schema = "LAB_MID", catalog = "")
public class OnfieldPlayersEntity {
    private boolean onfieldId;
    private boolean containsContainId;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ONFIELD_ID")
    public boolean isOnfieldId() {
        return onfieldId;
    }

    public void setOnfieldId(boolean onfieldId) {
        this.onfieldId = onfieldId;
    }

    @Basic
    @Column(name = "CONTAINS_CONTAIN_ID")
    public boolean isContainsContainId() {
        return containsContainId;
    }

    public void setContainsContainId(boolean containsContainId) {
        this.containsContainId = containsContainId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OnfieldPlayersEntity that = (OnfieldPlayersEntity) o;

        if (onfieldId != that.onfieldId) return false;
        if (containsContainId != that.containsContainId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (onfieldId ? 1 : 0);
        result = 31 * result + (containsContainId ? 1 : 0);
        return result;
    }
}

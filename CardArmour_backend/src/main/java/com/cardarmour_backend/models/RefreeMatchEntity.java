package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "REFREE_MATCH", schema = "LAB_MID", catalog = "")
public class RefreeMatchEntity {
    private boolean refreeMatchId;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "REFREE_MATCH_ID")
    public boolean isRefreeMatchId() {
        return refreeMatchId;
    }

    public void setRefreeMatchId(boolean refreeMatchId) {
        this.refreeMatchId = refreeMatchId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RefreeMatchEntity that = (RefreeMatchEntity) o;

        if (refreeMatchId != that.refreeMatchId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return (refreeMatchId ? 1 : 0);
    }
}

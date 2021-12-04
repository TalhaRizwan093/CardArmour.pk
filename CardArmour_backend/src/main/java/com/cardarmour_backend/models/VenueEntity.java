package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "VENUE", schema = "LAB_MID", catalog = "")
public class VenueEntity {
    private boolean venueId;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "VENUE_ID")
    public boolean isVenueId() {
        return venueId;
    }

    public void setVenueId(boolean venueId) {
        this.venueId = venueId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VenueEntity that = (VenueEntity) o;

        if (venueId != that.venueId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return (venueId ? 1 : 0);
    }
}

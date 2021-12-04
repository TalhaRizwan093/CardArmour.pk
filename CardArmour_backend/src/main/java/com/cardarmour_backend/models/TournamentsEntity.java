package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "TOURNAMENTS", schema = "LAB_MID", catalog = "")
public class TournamentsEntity {
    private boolean tournamentId;
    private String title;
    private String location;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "TOURNAMENT_ID")
    public boolean isTournamentId() {
        return tournamentId;
    }

    public void setTournamentId(boolean tournamentId) {
        this.tournamentId = tournamentId;
    }

    @Basic
    @Column(name = "TITLE")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "LOCATION")
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TournamentsEntity that = (TournamentsEntity) o;

        if (tournamentId != that.tournamentId) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (location != null ? !location.equals(that.location) : that.location != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (tournamentId ? 1 : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (location != null ? location.hashCode() : 0);
        return result;
    }
}

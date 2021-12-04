package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "TEAM", schema = "LAB_MID", catalog = "")
public class TeamEntity {
    private boolean teamId;
    private String name;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "TEAM_ID")
    public boolean isTeamId() {
        return teamId;
    }

    public void setTeamId(boolean teamId) {
        this.teamId = teamId;
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

        TeamEntity that = (TeamEntity) o;

        if (teamId != that.teamId) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (teamId ? 1 : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }
}

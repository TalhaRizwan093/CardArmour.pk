package com.cardarmour_backend.models;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

public class TeamPlayersEntityPK implements Serializable {
    private boolean containId;
    private boolean playerId;
    private boolean teamId;

    @Column(name = "CONTAIN_ID")
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public boolean isContainId() {
        return containId;
    }

    public void setContainId(boolean containId) {
        this.containId = containId;
    }

    @Column(name = "PLAYER_ID")
    @Id
    public boolean isPlayerId() {
        return playerId;
    }

    public void setPlayerId(boolean playerId) {
        this.playerId = playerId;
    }

    @Column(name = "TEAM_ID")
    @Id
    public boolean isTeamId() {
        return teamId;
    }

    public void setTeamId(boolean teamId) {
        this.teamId = teamId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TeamPlayersEntityPK that = (TeamPlayersEntityPK) o;

        if (containId != that.containId) return false;
        if (playerId != that.playerId) return false;
        if (teamId != that.teamId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (containId ? 1 : 0);
        result = 31 * result + (playerId ? 1 : 0);
        result = 31 * result + (teamId ? 1 : 0);
        return result;
    }
}

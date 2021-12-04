package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "TEAM_PLAYERS", schema = "LAB_MID", catalog = "")
@IdClass(TeamPlayersEntityPK.class)
public class TeamPlayersEntity {
    private boolean containId;
    private boolean playerId;
    private boolean teamId;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CONTAIN_ID")
    public boolean isContainId() {
        return containId;
    }

    public void setContainId(boolean containId) {
        this.containId = containId;
    }

    @Id
    @Column(name = "PLAYER_ID")
    public boolean isPlayerId() {
        return playerId;
    }

    public void setPlayerId(boolean playerId) {
        this.playerId = playerId;
    }

    @Id
    @Column(name = "TEAM_ID")
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

        TeamPlayersEntity that = (TeamPlayersEntity) o;

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

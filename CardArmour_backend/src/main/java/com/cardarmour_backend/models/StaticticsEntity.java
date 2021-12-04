package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "STATICTICS", schema = "LAB_MID", catalog = "")
public class StaticticsEntity {
    private boolean stateId;
    private boolean goals;
    private boolean fouls;
    private String winner;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "STATE_ID")
    public boolean isStateId() {
        return stateId;
    }

    public void setStateId(boolean stateId) {
        this.stateId = stateId;
    }

    @Basic
    @Column(name = "GOALS")
    public boolean isGoals() {
        return goals;
    }

    public void setGoals(boolean goals) {
        this.goals = goals;
    }

    @Basic
    @Column(name = "FOULS")
    public boolean isFouls() {
        return fouls;
    }

    public void setFouls(boolean fouls) {
        this.fouls = fouls;
    }

    @Basic
    @Column(name = "WINNER")
    public String getWinner() {
        return winner;
    }

    public void setWinner(String winner) {
        this.winner = winner;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StaticticsEntity that = (StaticticsEntity) o;

        if (stateId != that.stateId) return false;
        if (goals != that.goals) return false;
        if (fouls != that.fouls) return false;
        if (winner != null ? !winner.equals(that.winner) : that.winner != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (stateId ? 1 : 0);
        result = 31 * result + (goals ? 1 : 0);
        result = 31 * result + (fouls ? 1 : 0);
        result = 31 * result + (winner != null ? winner.hashCode() : 0);
        return result;
    }
}

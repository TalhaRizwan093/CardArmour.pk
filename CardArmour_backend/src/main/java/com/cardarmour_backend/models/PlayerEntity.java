package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "PLAYER", schema = "LAB_MID", catalog = "")
public class PlayerEntity {
    private boolean playerId;
    private String name;
    private String position;
    private Boolean shirtNumber;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PLAYER_ID")
    public boolean isPlayerId() {
        return playerId;
    }

    public void setPlayerId(boolean playerId) {
        this.playerId = playerId;
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
    @Column(name = "POSITION")
    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Basic
    @Column(name = "SHIRT_NUMBER")
    public Boolean getShirtNumber() {
        return shirtNumber;
    }

    public void setShirtNumber(Boolean shirtNumber) {
        this.shirtNumber = shirtNumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PlayerEntity that = (PlayerEntity) o;

        if (playerId != that.playerId) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (position != null ? !position.equals(that.position) : that.position != null) return false;
        if (shirtNumber != null ? !shirtNumber.equals(that.shirtNumber) : that.shirtNumber != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (playerId ? 1 : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (position != null ? position.hashCode() : 0);
        result = 31 * result + (shirtNumber != null ? shirtNumber.hashCode() : 0);
        return result;
    }
}

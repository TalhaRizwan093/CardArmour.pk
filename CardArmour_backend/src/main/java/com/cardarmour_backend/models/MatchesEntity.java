package com.cardarmour_backend.models;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "MATCHES", schema = "LAB_MID", catalog = "")
public class MatchesEntity {
    private boolean matchId;
    private String matchType;
    private Date matchDate;
    private String wheatherCondition;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "MATCH_ID")
    public boolean isMatchId() {
        return matchId;
    }

    public void setMatchId(boolean matchId) {
        this.matchId = matchId;
    }

    @Basic
    @Column(name = "MATCH_TYPE")
    public String getMatchType() {
        return matchType;
    }

    public void setMatchType(String matchType) {
        this.matchType = matchType;
    }

    @Basic
    @Column(name = "MATCH_DATE")
    public Date getMatchDate() {
        return matchDate;
    }

    public void setMatchDate(Date matchDate) {
        this.matchDate = matchDate;
    }

    @Basic
    @Column(name = "WHEATHER_CONDITION")
    public String getWheatherCondition() {
        return wheatherCondition;
    }

    public void setWheatherCondition(String wheatherCondition) {
        this.wheatherCondition = wheatherCondition;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MatchesEntity that = (MatchesEntity) o;

        if (matchId != that.matchId) return false;
        if (matchType != null ? !matchType.equals(that.matchType) : that.matchType != null) return false;
        if (matchDate != null ? !matchDate.equals(that.matchDate) : that.matchDate != null) return false;
        if (wheatherCondition != null ? !wheatherCondition.equals(that.wheatherCondition) : that.wheatherCondition != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (matchId ? 1 : 0);
        result = 31 * result + (matchType != null ? matchType.hashCode() : 0);
        result = 31 * result + (matchDate != null ? matchDate.hashCode() : 0);
        result = 31 * result + (wheatherCondition != null ? wheatherCondition.hashCode() : 0);
        return result;
    }
}

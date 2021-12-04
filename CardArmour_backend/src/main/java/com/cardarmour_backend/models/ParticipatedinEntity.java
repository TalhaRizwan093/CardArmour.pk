package com.cardarmour_backend.models;

import javax.persistence.*;

@Entity
@Table(name = "PARTICIPATEDIN", schema = "LAB_MID", catalog = "")
public class ParticipatedinEntity {
    private boolean particpateinId;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PARTICPATEIN_ID")
    public boolean isParticpateinId() {
        return particpateinId;
    }

    public void setParticpateinId(boolean particpateinId) {
        this.particpateinId = particpateinId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ParticipatedinEntity that = (ParticipatedinEntity) o;

        if (particpateinId != that.particpateinId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return (particpateinId ? 1 : 0);
    }
}

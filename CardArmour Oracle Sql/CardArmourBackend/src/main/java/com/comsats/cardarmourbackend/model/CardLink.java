package com.comsats.cardarmourbackend.model;

import javax.persistence.*;

@Entity
@Table(name = "Card Link", schema = "CARDARMOUR", catalog = "")
public class CardLink {
    private int linkid;
    private int linkstatus;
    private int bankaccountid;
    private int virtualcardid;

    @Id
    @Column(name = "LINKID")
    public int getLinkid() {
        return linkid;
    }

    public void setLinkid(int linkid) {
        this.linkid = linkid;
    }

    @Basic
    @Column(name = "LINKSTATUS")
    public int getLinkstatus() {
        return linkstatus;
    }

    public void setLinkstatus(int linkstatus) {
        this.linkstatus = linkstatus;
    }

    @Basic
    @Column(name = "BANKACCOUNTID")
    public int getBankaccountid() {
        return bankaccountid;
    }

    public void setBankaccountid(int bankaccountid) {
        this.bankaccountid = bankaccountid;
    }

    @Basic
    @Column(name = "VIRTUALCARDID")
    public int getVirtualcardid() {
        return virtualcardid;
    }

    public void setVirtualcardid(int virtualcardid) {
        this.virtualcardid = virtualcardid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CardLink cardLink = (CardLink) o;

        if (linkid != cardLink.linkid) return false;
        if (linkstatus != cardLink.linkstatus) return false;
        if (bankaccountid != cardLink.bankaccountid) return false;
        if (virtualcardid != cardLink.virtualcardid) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = linkid;
        result = 31 * result + linkstatus;
        result = 31 * result + bankaccountid;
        result = 31 * result + virtualcardid;
        return result;
    }
}

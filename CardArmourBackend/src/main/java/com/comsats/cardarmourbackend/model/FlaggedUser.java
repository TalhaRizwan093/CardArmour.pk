package com.comsats.cardarmourbackend.model;

import javax.persistence.*;

@Entity
@Table(name = "Flagged User", schema = "CARDARMOUR", catalog = "")
public class FlaggedUser {
    private int flaggedid;
    private String reason;
    private int adminAdminid;
    private int customerCustomerid;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "FLAGGEDID")
    public int getFlaggedid() {
        return flaggedid;
    }

    public void setFlaggedid(int flaggedid) {
        this.flaggedid = flaggedid;
    }

    @Basic
    @Column(name = "REASON")
    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    @Basic
    @Column(name = "ADMIN_ADMINID")
    public int getAdminAdminid() {
        return adminAdminid;
    }

    public void setAdminAdminid(int adminAdminid) {
        this.adminAdminid = adminAdminid;
    }

    @Basic
    @Column(name = "CUSTOMER_CUSTOMERID")
    public int getCustomerCustomerid() {
        return customerCustomerid;
    }

    public void setCustomerCustomerid(int customerCustomerid) {
        this.customerCustomerid = customerCustomerid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FlaggedUser that = (FlaggedUser) o;

        if (flaggedid != that.flaggedid) return false;
        if (adminAdminid != that.adminAdminid) return false;
        if (customerCustomerid != that.customerCustomerid) return false;
        if (reason != null ? !reason.equals(that.reason) : that.reason != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = flaggedid;
        result = 31 * result + (reason != null ? reason.hashCode() : 0);
        result = 31 * result + adminAdminid;
        result = 31 * result + customerCustomerid;
        return result;
    }
}

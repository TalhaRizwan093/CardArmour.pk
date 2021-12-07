package com.comsats.cardarmourbackend.model;

import javax.persistence.*;
import java.sql.Date;

@Entity
public class Sms {
    private int smsId;
    private Date time;
    private String details;
    private int transactionid;
    private int customerid;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "SMS_ID")
    public int getSmsId() {
        return smsId;
    }

    public void setSmsId(int smsId) {
        this.smsId = smsId;
    }

    @Basic
    @Column(name = "TIME")
    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Basic
    @Column(name = "DETAILS")
    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Basic
    @Column(name = "TRANSACTIONID")
    public int getTransactionid() {
        return transactionid;
    }

    public void setTransactionid(int transactionid) {
        this.transactionid = transactionid;
    }

    @Basic
    @Column(name = "CUSTOMERID")
    public int getCustomerid() {
        return customerid;
    }

    public void setCustomerid(int customerid) {
        this.customerid = customerid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Sms sms = (Sms) o;

        if (smsId != sms.smsId) return false;
        if (transactionid != sms.transactionid) return false;
        if (customerid != sms.customerid) return false;
        if (time != null ? !time.equals(sms.time) : sms.time != null) return false;
        if (details != null ? !details.equals(sms.details) : sms.details != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = smsId;
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (details != null ? details.hashCode() : 0);
        result = 31 * result + transactionid;
        result = 31 * result + customerid;
        return result;
    }
}

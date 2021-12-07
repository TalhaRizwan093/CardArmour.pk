package com.comsats.cardarmourbackend.model;

import javax.persistence.*;
import java.sql.Date;

@Entity
public class Feedback {
    private int feedbackid;
    private String detail;
    private Date date;
    private int customerid;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "FEEDBACKID")
    public int getFeedbackid() {
        return feedbackid;
    }

    public void setFeedbackid(int feedbackid) {
        this.feedbackid = feedbackid;
    }

    @Basic
    @Column(name = "DETAIL")
    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Basic
    @Column(name = "date")
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
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

        Feedback feedback = (Feedback) o;

        if (feedbackid != feedback.feedbackid) return false;
        if (customerid != feedback.customerid) return false;
        if (detail != null ? !detail.equals(feedback.detail) : feedback.detail != null) return false;
        if (date != null ? !date.equals(feedback.date) : feedback.date != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = feedbackid;
        result = 31 * result + (detail != null ? detail.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + customerid;
        return result;
    }
}

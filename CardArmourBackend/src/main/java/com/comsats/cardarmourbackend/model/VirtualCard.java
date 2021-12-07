package com.comsats.cardarmourbackend.model;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "Virtual Card", schema = "CARDARMOUR", catalog = "")
public class VirtualCard {
    private int cardid;
    private String cardholdername;
    private String cardNumber;
    private int cvc;
    private Date expdate;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CARDID")
    public int getCardid() {
        return cardid;
    }

    public void setCardid(int cardid) {
        this.cardid = cardid;
    }

    @Basic
    @Column(name = "CARDHOLDERNAME")
    public String getCardholdername() {
        return cardholdername;
    }

    public void setCardholdername(String cardholdername) {
        this.cardholdername = cardholdername;
    }

    @Basic
    @Column(name = "card number")
    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    @Basic
    @Column(name = "CVC")
    public int getCvc() {
        return cvc;
    }

    public void setCvc(int cvc) {
        this.cvc = cvc;
    }

    @Basic
    @Column(name = "EXPDATE")
    public Date getExpdate() {
        return expdate;
    }

    public void setExpdate(Date expdate) {
        this.expdate = expdate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VirtualCard that = (VirtualCard) o;

        if (cardid != that.cardid) return false;
        if (cvc != that.cvc) return false;
        if (cardholdername != null ? !cardholdername.equals(that.cardholdername) : that.cardholdername != null)
            return false;
        if (cardNumber != null ? !cardNumber.equals(that.cardNumber) : that.cardNumber != null) return false;
        if (expdate != null ? !expdate.equals(that.expdate) : that.expdate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cardid;
        result = 31 * result + (cardholdername != null ? cardholdername.hashCode() : 0);
        result = 31 * result + (cardNumber != null ? cardNumber.hashCode() : 0);
        result = 31 * result + cvc;
        result = 31 * result + (expdate != null ? expdate.hashCode() : 0);
        return result;
    }
}

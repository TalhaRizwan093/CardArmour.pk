package com.comsats.cardarmourbackend.model;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "Bank Account", schema = "CARDARMOUR", catalog = "")
public class BankAccount {
    private int accountid;
    private String cardholdername;
    private String bankname;
    private String cardnumber;
    private int cvc;
    private Date expdate;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ACCOUNTID")
    public int getAccountid() {
        return accountid;
    }

    public void setAccountid(int accountid) {
        this.accountid = accountid;
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
    @Column(name = "BANKNAME")
    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname;
    }

    @Basic
    @Column(name = "CARDNUMBER")
    public String getCardnumber() {
        return cardnumber;
    }

    public void setCardnumber(String cardnumber) {
        this.cardnumber = cardnumber;
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

        BankAccount that = (BankAccount) o;

        if (accountid != that.accountid) return false;
        if (cvc != that.cvc) return false;
        if (cardholdername != null ? !cardholdername.equals(that.cardholdername) : that.cardholdername != null)
            return false;
        if (bankname != null ? !bankname.equals(that.bankname) : that.bankname != null) return false;
        if (cardnumber != null ? !cardnumber.equals(that.cardnumber) : that.cardnumber != null) return false;
        if (expdate != null ? !expdate.equals(that.expdate) : that.expdate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = accountid;
        result = 31 * result + (cardholdername != null ? cardholdername.hashCode() : 0);
        result = 31 * result + (bankname != null ? bankname.hashCode() : 0);
        result = 31 * result + (cardnumber != null ? cardnumber.hashCode() : 0);
        result = 31 * result + cvc;
        result = 31 * result + (expdate != null ? expdate.hashCode() : 0);
        return result;
    }
}

package com.comsats.cardarmourbackend.model;

import javax.persistence.*;

@Entity
@Table(name = "Customer Bank Account", schema = "CARDARMOUR", catalog = "")
public class CustomerBankAccount {
    private int cbaId;
    private int customerid;
    private int accountid;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CBA_ID")
    public int getCbaId() {
        return cbaId;
    }

    public void setCbaId(int cbaId) {
        this.cbaId = cbaId;
    }

    @Basic
    @Column(name = "CUSTOMERID")
    public int getCustomerid() {
        return customerid;
    }

    public void setCustomerid(int customerid) {
        this.customerid = customerid;
    }

    @Basic
    @Column(name = "ACCOUNTID")
    public int getAccountid() {
        return accountid;
    }

    public void setAccountid(int accountid) {
        this.accountid = accountid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CustomerBankAccount that = (CustomerBankAccount) o;

        if (cbaId != that.cbaId) return false;
        if (customerid != that.customerid) return false;
        if (accountid != that.accountid) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cbaId;
        result = 31 * result + customerid;
        result = 31 * result + accountid;
        return result;
    }
}

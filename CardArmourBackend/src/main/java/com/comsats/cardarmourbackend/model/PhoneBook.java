package com.comsats.cardarmourbackend.model;

import javax.persistence.*;

@Entity
@Table(name = "Phone Book", schema = "CARDARMOUR", catalog = "")
public class PhoneBook {
    private int phonenumberid;
    private String phonenumber;
    private int customerid;

    @Id
    @Column(name = "PHONENUMBERID")
    public int getPhonenumberid() {
        return phonenumberid;
    }

    public void setPhonenumberid(int phonenumberid) {
        this.phonenumberid = phonenumberid;
    }

    @Basic
    @Column(name = "PHONENUMBER")
    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
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

        PhoneBook phoneBook = (PhoneBook) o;

        if (phonenumberid != phoneBook.phonenumberid) return false;
        if (customerid != phoneBook.customerid) return false;
        if (phonenumber != null ? !phonenumber.equals(phoneBook.phonenumber) : phoneBook.phonenumber != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = phonenumberid;
        result = 31 * result + (phonenumber != null ? phonenumber.hashCode() : 0);
        result = 31 * result + customerid;
        return result;
    }
}

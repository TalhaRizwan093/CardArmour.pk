package com.comsats.cardarmourbackend.model;

import javax.persistence.*;

@Entity
@Table(name = "Phone Book", schema = "CARDARMOUR", catalog = "")
public class PhoneBook {
    private int phonenumberid;
    private int phonenumber;
    private int customerid;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PHONENUMBERID")
    public int getPhonenumberid() {
        return phonenumberid;
    }

    public void setPhonenumberid(int phonenumberid) {
        this.phonenumberid = phonenumberid;
    }

    @Basic
    @Column(name = "PHONENUMBER")
    public int getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(int phonenumber) {
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
        if (phonenumber != phoneBook.phonenumber) return false;
        if (customerid != phoneBook.customerid) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = phonenumberid;
        result = 31 * result + phonenumber;
        result = 31 * result + customerid;
        return result;
    }
}

package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Sms;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SMSRepository extends JpaRepository<Sms,Integer> {

    @Query(value="select * from sms where customerid = ?1",nativeQuery = true)
    List<Sms> getSmsById(int customerrid);

}

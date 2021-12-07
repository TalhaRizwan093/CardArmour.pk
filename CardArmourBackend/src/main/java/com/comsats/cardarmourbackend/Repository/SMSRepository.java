package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Sms;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SMSRepository extends JpaRepository<Sms,Integer> {
}

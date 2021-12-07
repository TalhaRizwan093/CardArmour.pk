package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.VirtualCard;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VirtualCardRepository extends JpaRepository<VirtualCard,Integer> {
}

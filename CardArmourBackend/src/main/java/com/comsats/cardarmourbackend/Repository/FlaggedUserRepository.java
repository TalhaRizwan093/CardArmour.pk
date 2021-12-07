package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.FlaggedUser;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FlaggedUserRepository extends JpaRepository<FlaggedUser,Integer> {
}

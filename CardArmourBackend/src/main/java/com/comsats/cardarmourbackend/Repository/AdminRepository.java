package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
}

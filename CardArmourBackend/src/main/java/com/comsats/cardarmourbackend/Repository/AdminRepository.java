package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AdminRepository extends JpaRepository<Admin, Integer> {

    @Query(value="SELECT * FROM ADMIN WHERE USERID=?1",nativeQuery = true)
    Admin authenticateAdmin(int userid);

    @Query(value="SELECT ADMINID FROM ADMIN WHERE USERID = ?1",nativeQuery = true)
    int getAdminIdByUserid(int userid);

}

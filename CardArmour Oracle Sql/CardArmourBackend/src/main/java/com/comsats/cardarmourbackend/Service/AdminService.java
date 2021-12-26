package com.comsats.cardarmourbackend.Service;
import com.comsats.cardarmourbackend.Repository.AdminRepository;
import com.comsats.cardarmourbackend.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

    @Autowired
    private AdminRepository adminRepository;

    public int getAdmin(int userid){
        try{
            return adminRepository.getAdminIdByUserid(userid);
        } catch(Exception e){
            return 0;
        }
    }

    public boolean checkAdmin(int userid){
        try{
            Admin admin = new Admin();
            admin = adminRepository.authenticateAdmin(userid);
            if(admin!=null){
                return true;
            } else {
                return false;
            }
        } catch (Exception e){
            return false;
        }
    }
}

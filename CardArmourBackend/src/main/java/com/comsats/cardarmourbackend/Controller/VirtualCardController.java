package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Service.VirtualCardService;
import com.comsats.cardarmourbackend.model.VirtualCard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;

@CrossOrigin("*")
@RestController
public class VirtualCardController {

    @Autowired
    private VirtualCardService virtualCardService;

    @PostMapping("/getVirtualCard")
    public VirtualCard getVirtualCard(@RequestParam int accountid){
        return virtualCardService.getVirtualCard(accountid);
    }

    @PostMapping("/generateVirtualCard")
    public int addVirtualCard(@RequestParam String cardholdername,@RequestParam Date expdate){
        return virtualCardService.addVirtualCard(cardholdername,expdate);
    }

    @PostMapping("/deleteVirtualCard")
    public void deleteVirtualCard(@RequestParam int cardid){
        virtualCardService.deleteVirtualCard(cardid);
    }

}
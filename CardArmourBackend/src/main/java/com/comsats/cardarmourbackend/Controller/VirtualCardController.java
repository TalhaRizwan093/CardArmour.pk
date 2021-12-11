package com.comsats.cardarmourbackend.Controller;

import com.comsats.cardarmourbackend.Repository.VirtualCardRepository;
import com.comsats.cardarmourbackend.model.VirtualCard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.util.Random;

@CrossOrigin("*")
@RestController
public class VirtualCardController {

    @Autowired
    private VirtualCardRepository vcRepo;

    @PostMapping("/getVirtualCard")
    public VirtualCard getVirtualCard(@RequestParam int accountid){
        try{
            return vcRepo.getVirtualCard(accountid);
        }catch (Exception e){
            return null;
        }
    }

    @PostMapping("/generateVirtualCard")
    public boolean addVirtualCard(@RequestParam String cardholdername,@RequestParam Date expdate){
        try{
            VirtualCard virtualCard = new VirtualCard();
            virtualCard.setCardid(generateId());
            virtualCard.setCardholdername(cardholdername);
            virtualCard.setCardNumber(generateCardNumber());
            virtualCard.setCvc(generatecvc());
            virtualCard.setExpdate(expdate);
            vcRepo.addVirtualCard(virtualCard.getCardid(),virtualCard.getCardholdername(),virtualCard.getCardNumber(),virtualCard.getCvc(),virtualCard.getExpdate());
        } catch(Exception e){
        }
        return true;
    }

    @PostMapping("/deleteVirtualCard")
    public boolean deleteVirtualCard(@RequestParam int cardid){
        try{
            vcRepo.deleteVirtualCard(cardid);
        } catch(Exception e){
        }
        return true;
    }


    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }

    private int generatecvc(){
        Random rand = new Random();
        return rand.nextInt(1000);
    }

    private String generateCardNumber(){
        String cardNumber="";
        Random rand = new Random();
        for(int i = 0;i<4;i++){
            cardNumber += rand.nextInt(10000);
            if(i<3){
                cardNumber += "-";
            }
        }
        return cardNumber;
    }

}

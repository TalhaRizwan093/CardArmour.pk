package com.comsats.cardarmourbackend.Service;

import com.comsats.cardarmourbackend.Repository.VirtualCardRepository;
import com.comsats.cardarmourbackend.model.VirtualCard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.Random;

@Service
public class VirtualCardService {

    @Autowired
    private VirtualCardRepository virtualCardRepository;

    public VirtualCard getVirtualCard(int accountid){
        try{
            return virtualCardRepository.getVirtualCard(accountid);
        }catch (Exception e){
            return null;
        }
    }

    public int addVirtualCard(String cardholdername, Date expdate){
        VirtualCard virtualCard = new VirtualCard();
        try{
            virtualCard.setCardid(ID_Generator.generateID());
            virtualCard.setCardholdername(cardholdername);
            virtualCard.setCardNumber(generateCardNumber());
            virtualCard.setCvc(generatecvc());
            virtualCard.setExpdate(expdate);
            virtualCardRepository.addVirtualCard(virtualCard.getCardid(),virtualCard.getCardholdername(),virtualCard.getCardNumber(),virtualCard.getCvc(),virtualCard.getExpdate());
        } catch(Exception e){
        }
        return virtualCard.getCardid();
    }

    public void deleteVirtualCard(int cardid){
        try{
            virtualCardRepository.deleteVirtualCard(cardid);
        } catch(Exception e){
        }
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
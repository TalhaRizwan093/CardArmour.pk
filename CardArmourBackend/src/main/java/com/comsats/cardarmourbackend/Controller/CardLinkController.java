package com.comsats.cardarmourbackend.Controller;


import com.comsats.cardarmourbackend.Repository.CardLinkRepository;
import com.comsats.cardarmourbackend.model.CardLink;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@CrossOrigin("*")
@RestController
public class CardLinkController {

    @Autowired
    private CardLinkRepository cardLinkRepository;

    @PostMapping("/linkcards")
    public boolean linkcard(@RequestParam int bankaccountid, @RequestParam int virtualcardid){
        CardLink link = new CardLink();
        try{
            link.setLinkid(generateId());
            link.setLinkstatus(1);
            link.setBankaccountid(bankaccountid);
            link.setVirtualcardid(virtualcardid);
            cardLinkRepository.cardLink(link.getLinkid(),link.getLinkstatus(),link.getBankaccountid(),link.getVirtualcardid());
        } catch(Exception e) {
        }
        return true;
    }


    private int generateId(){
        Random rand = new Random();
        return rand.nextInt(10000000);
    }

}

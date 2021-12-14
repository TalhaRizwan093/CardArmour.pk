package com.comsats.cardarmourbackend.Service;
import com.comsats.cardarmourbackend.Repository.CardLinkRepository;
import com.comsats.cardarmourbackend.model.CardLink;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

@Service
public class CardLinkService {

    @Autowired
    private CardLinkRepository cardLinkRepository;

    public void linkcard(int bankaccountid,int virtualcardid){
        CardLink link = new CardLink();
        try{
            link.setLinkid(ID_Generator.generateID());
            link.setLinkstatus(1);
            link.setBankaccountid(bankaccountid);
            link.setVirtualcardid(virtualcardid);
            cardLinkRepository.cardLink(link.getLinkid(),link.getLinkstatus(),link.getBankaccountid(),link.getVirtualcardid());
        } catch(Exception e) {
        }
    }

}
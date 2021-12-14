package com.comsats.cardarmourbackend.Controller;
import com.comsats.cardarmourbackend.Service.CardLinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("*")
@RestController
public class CardLinkController {

    @Autowired
    private CardLinkService cardLinkService;

    @PostMapping("/linkcards")
    public void linkcard(@RequestParam int bankaccountid, @RequestParam int virtualcardid) {
        cardLinkService.linkcard(bankaccountid,virtualcardid);
    }
}
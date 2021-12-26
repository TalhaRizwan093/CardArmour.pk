package com.example.cardarmourbackendmongodb.Controller;

import com.example.cardarmourbackendmongodb.Model.FlaggedAccount;
import com.example.cardarmourbackendmongodb.Service.FlaggedUserService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
@AllArgsConstructor
public class FlaggedAccountController {

    private final FlaggedUserService flaggedUserService;

    @GetMapping("/getFlaggedList")
    public List<FlaggedAccount> getFlaggedList(){
        return flaggedUserService.getFlaggedList();
    }

    @PostMapping("/addToFlaggedUser")
    public void addToFlaggedUser(@RequestBody FlaggedAccount flaggedAccount){
        flaggedUserService.addToFlaggedAccount(flaggedAccount);
    }

    @PostMapping("/deleteFlaggedAccount")
    public void delete(@RequestParam String username){
        flaggedUserService.deleteFromFlagged(username);
    }

    @PostMapping("/getFlaggedOnUsername")
    public FlaggedAccount getFlaggedOnUsername(@RequestParam String username){
        return flaggedUserService.getFlaggedOnUsername(username);
    }




}
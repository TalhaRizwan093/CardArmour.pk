package com.cardarmour_backend.controllers;

import com.cardarmour_backend.models.CoachesEntity;
import com.cardarmour_backend.repositories.CoachesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import java.util.List;

@CrossOrigin("*")
@RestController
public class coachesController {

    @Autowired
    private CoachesRepo coachesRepo;

    @GetMapping("/authority")
    public List<CoachesEntity> findAll() {
        List<CoachesEntity> coach = coachesRepo.findAll();
        return coach;
    }


}

package com.cardarmour_backend.services;

import com.cardarmour_backend.models.CoachesEntity;
import com.cardarmour_backend.repositories.CoachesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AuthorityService {

    @Autowired
    private CoachesRepo coachesRepo;



}

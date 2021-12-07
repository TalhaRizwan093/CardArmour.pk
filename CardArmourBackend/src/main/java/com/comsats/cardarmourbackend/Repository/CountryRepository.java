package com.comsats.cardarmourbackend.Repository;

import com.comsats.cardarmourbackend.model.Country;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CountryRepository extends JpaRepository<Country, Integer> {
}

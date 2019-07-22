package com.timesheet.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.timesheet.entity.Dipendente;

public interface DipendenteRepository extends JpaRepository<Dipendente, Integer>{

}

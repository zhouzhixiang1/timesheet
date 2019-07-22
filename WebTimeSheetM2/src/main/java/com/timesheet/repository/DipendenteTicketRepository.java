package com.timesheet.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.timesheet.entity.Dipendente;
import com.timesheet.entity.DipendenteTicket;

public interface DipendenteTicketRepository
		extends JpaRepository<DipendenteTicket, Integer>, JpaSpecificationExecutor<DipendenteTicket> {


}

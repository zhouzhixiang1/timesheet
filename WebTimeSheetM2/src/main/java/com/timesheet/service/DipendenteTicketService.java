package com.timesheet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.timesheet.entity.DipendenteTicket;
import com.timesheet.repository.DipendenteTicketRepository;

@Service
public class DipendenteTicketService {
	
	@Autowired
	private DipendenteTicketRepository dipendenteTicketRepository;
	
	
	public DipendenteTicket saveDT(DipendenteTicket dipendenteTicket){
		return dipendenteTicketRepository.saveAndFlush(dipendenteTicket);
	}
	
	public Page<DipendenteTicket> findAllDT(int pageNo, int pageSize){
		PageRequest pageable = new PageRequest(pageNo, pageSize);
		return dipendenteTicketRepository.findAll(pageable);
		
	}
	
	public DipendenteTicket findOneDT(Integer idDipendenteTicket) {
		return dipendenteTicketRepository.findOne(idDipendenteTicket);
		
	}
	
	
	
}

package com.timesheet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.timesheet.entity.Ticket;
import com.timesheet.repository.TicketRepository;

@Service
public class TicketService {
	
	@Autowired
	private TicketRepository ticketrepository;
	
	
	public List<Ticket> getAllTicket(){
		return ticketrepository.findAll();
	}
	
	public Ticket getTicketById(Integer idTicket) {
		return ticketrepository.findOne(idTicket);
		
	}
	public Page<Ticket> getAllTicketPageable(int pageNo , int pageSize){
		PageRequest pageable = new PageRequest(pageNo,pageSize);
		return ticketrepository.findAll(pageable);
	}
	
	public void deleteT(Integer idTicket) {
		ticketrepository.delete(idTicket);		
	}
	
	public Ticket save(Ticket ticket) {
		return ticketrepository.saveAndFlush(ticket);		
	}

}

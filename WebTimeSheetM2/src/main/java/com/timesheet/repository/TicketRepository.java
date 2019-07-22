package com.timesheet.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.timesheet.entity.Ticket;

public interface TicketRepository extends JpaRepository<Ticket, Integer>{

}

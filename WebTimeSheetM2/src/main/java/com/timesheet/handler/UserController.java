package com.timesheet.handler;


import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timesheet.entity.DipendenteTicket;
import com.timesheet.entity.Ticket;
import com.timesheet.repository.DipendenteTicketRepository;
import com.timesheet.service.DipendenteTicketService;
import com.timesheet.service.TicketService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private DipendenteTicketService dipendenteTicketService;
	
	@Autowired
	private TicketService ticketService;
	
	@Autowired
	private DipendenteTicketRepository dipendenteTicketRepository;

	@RequestMapping(value="/list")
	public String list(){
		return "main";
	}
	
	//go to page addHoursDipen
	@RequestMapping(value="/addDT" , method = RequestMethod.GET)
	public String addHoursDT(Map<String, Object> map) {
		map.put("tickets", ticketService.getAllTicket());
		map.put("dt", new DipendenteTicket());
		return "dipendente/addHoursDipen";
		
	}
	//add Hours and return main page
	@RequestMapping(value="/addDT", method = RequestMethod.POST)
	public String saveDT(DipendenteTicket dipendenteTicket) {
		dipendenteTicketService.saveDT(dipendenteTicket);
		return "redirect:/user/listDT";
		
	}
	
	//select table dipendente-ticket by username(DIPENDENTE)
		@RequestMapping(value="/listDT")
		public String listById(@RequestParam(value = "pageNo", required = false, defaultValue = "0" )Integer pageNo, Map<String, Object> map,HttpSession session) {
			
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			String username = authentication.getName();
			
			Specification<DipendenteTicket> spec = new Specification<DipendenteTicket>() {
	
				@Override
				public Predicate toPredicate(Root<DipendenteTicket> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
					return cb.equal(root.get("users").get("username"), username);
				}
			};
		
	        Sort sort = new Sort(Sort.Direction.ASC,"data");
			Pageable pageable = new PageRequest(pageNo, 5, sort);
			Page<DipendenteTicket> page = this.dipendenteTicketRepository.findAll(spec,pageable);
			
			map.put("page", page);
			return"dipendente/listHoursDipen";
		}
		
		
		//search dipendente-ticket by username and commessa
		@RequestMapping(value="/listDTSearch")
		public String listBySearch(@RequestParam(value="commessa", required= false, defaultValue = "commessa")String commessa, Map<String, Object>map){
	
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			String username = authentication.getName();
			
			Specification<DipendenteTicket> spec1 = new Specification<DipendenteTicket>() {

				@Override
				public Predicate toPredicate(Root<DipendenteTicket> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
					return cb.like(root.get("idTicket").get("commessa"), "%"+ commessa + "%");
				}
			};
			Specification<DipendenteTicket> spec2 = new Specification<DipendenteTicket>() {
				
				@Override
				public Predicate toPredicate(Root<DipendenteTicket> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
					return cb.equal(root.get("users").get("username"), username);
				}
			};
	        Sort sort = new Sort(Sort.Direction.DESC,"data");
			//Pageable pageable = new PageRequest(pageNo, 5, sort);
			List<DipendenteTicket> page = this.dipendenteTicketRepository.findAll(Specifications.where(spec2).and(spec1),sort);
			int totalHours = 0;
			for(DipendenteTicket dipendenteTicket : page) {
				totalHours += dipendenteTicket.getOreLavorate();
			}
			map.put("totalHours", totalHours);
			map.put("page", page);
			return "dipendente/searchListHoursDipen";
		}
		
		//select dipendente-ticket by id_dipendente_ticket (update)
		@RequestMapping(value="/updateDT/{idDipendenteTicket}", method = RequestMethod.GET)
			public String inputDT(@PathVariable("idDipendenteTicket")Integer idDipendenteTicket, Map<String , Object>map) {
			DipendenteTicket dt = dipendenteTicketRepository.findOne(idDipendenteTicket);
				map.put("tickets", ticketService.getAllTicket());
				map.put("dt", dt);
				return "dipendente/updateHoursDipen";
		}
		
		//upadate dipendente-ticket and return list 
		@RequestMapping(value="/updateDT/{idDipendenteTicket}",method = RequestMethod.PUT)
		public String edit(DipendenteTicket dipendenteTicket){
			dipendenteTicketService.saveDT(dipendenteTicket);
			return "redirect:/user/listDT";	
		}
			

		
			
		
	
	

}

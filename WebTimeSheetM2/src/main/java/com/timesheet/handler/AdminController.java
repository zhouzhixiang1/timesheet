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
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	private DipendenteTicketRepository dipendenteTicketRepository;
	
	@Autowired
	private DipendenteTicketService dipendenteTicketService;
	
	@Autowired
	private TicketService ticketService;
	
	
			//select table dipendente-ticket by username
			@RequestMapping(value="/listDTM")
			public String listDT(@RequestParam(value="pageNo", required = false , defaultValue = "0")Integer pageNo ,Map<String, Object> map) {
				Page<DipendenteTicket> page = dipendenteTicketService.findAllDT(pageNo, 5);
				map.put("page", page);
				return "manager/listHoursDipenM";
				
			}
	
			//search dipendente-ticket by username and commessa
			@RequestMapping(value="/listDTSearchM")
			public String listBySearch(@RequestParam(value="commessa", required= false)String commessa,
					@RequestParam(value="username", required= false)String username,Map<String, Object>map){
		
				
				Specification<DipendenteTicket> spec1 = new Specification<DipendenteTicket>() {

					@Override
					public Predicate toPredicate(Root<DipendenteTicket> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
						return cb.like(root.get("idTicket").get("commessa"), "%"+ commessa + "%");
					}
				};
				Specification<DipendenteTicket> spec2 = new Specification<DipendenteTicket>() {
					
					@Override
					public Predicate toPredicate(Root<DipendenteTicket> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
						return cb.like(root.get("users").get("username"), "%" + username + "%");
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
				return "manager/searchListHoursDipenM";
			}
	
		
			//select all table ticket 
			@RequestMapping(value="/listT")
			public String listT(@RequestParam(value="pageNo", required = false , defaultValue = "0")Integer pageNo ,Map<String, Object> map) {
				Page<Ticket> page = ticketService.getAllTicketPageable(pageNo, 5);
				map.put("page", page);
				return "manager/listTicket";
				
			}
			//select ticket by idTicket
			@RequestMapping(value="/detailsT/{idTicket}",method = RequestMethod.GET)
			public String findOneTicketM(@PathVariable Integer idTicket,Map <String, Object> map){
				Ticket mticket = ticketService.getTicketById(idTicket);
				map.put("mticket", mticket);
				return "manager/ticketDetails";
				
			}
			//delete ticket by idTicket
			@RequestMapping(value="/deleteT/{idTicket}",method = RequestMethod.DELETE)
			public String deleteTicketById(@PathVariable("idTicket")Integer idTicket) {
				ticketService.deleteT(idTicket);
				return "redirect:/admin/listT";
				
			}
			//go to add ticket page
			@RequestMapping(value="/addTicket",method = RequestMethod.GET)
			public String addTicket(Map<String , Object>map){
				map.put("ticket", new Ticket());
				return "manager/addTicket";
				
			}
			//add ticket and return listTicket
			@RequestMapping(value="/addTicket",method = RequestMethod.POST)
			public String save(Ticket ticket){
				ticketService.save(ticket);
				return "redirect:/admin/listT";
				
			}
	
	
	
	
	
	
	

//	//password encryption
//	public static void main(String[] args) {
//		
//		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//		System.out.println(encoder.encode("123"));
//	}
}











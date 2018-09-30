package com.niit.frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Backend.dao.CustomerRepository;
import com.niit.Backend.model.Customer;
@Controller

public class CustomerController {
	@Autowired
	CustomerRepository customerRepository;
	
	
	
	
	
	@RequestMapping(value="/addCustomer", method=RequestMethod.POST)
	public String register(@ModelAttribute("customer") Customer customer){
		customerRepository.addCustomer(customer);
		
		return "Login";
		
	}
	


}

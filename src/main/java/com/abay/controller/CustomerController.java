package com.abay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;
import com.abay.model.Customer;
import com.abay.service.CustomerDAO;

@Controller
public class CustomerController {
	@Autowired
	private CustomerDAO customerDAO;
	
	@GetMapping({"/home", "/", "index"})
	public String index() {
		return "index";
	}
	@GetMapping("/customer/list")
	public String listCustomer(Model theModel) {
		List<Customer> theCustomers = customerDAO.getCustomers();
		theModel.addAttribute("customers", theCustomers);
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);

		return "list-customers";
	}
	@PostMapping("/customer/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer, Model theModel) {
			
		customerDAO.save(theCustomer);
		return "redirect:/customer/list#jump";
	}
	@GetMapping("/customer/updateCustomer")
	public String updateCustomer(@RequestParam("customerId") int theId, Model theModel) {
		
		Customer theCustomer = customerDAO.getCustomer(theId);
		
		theModel.addAttribute("customer", theCustomer);
		
		return "list-customers";
	}
	@GetMapping("/customer/deleteCustomer")
	public String deleteCustomer(@RequestParam("customerId") int theId, Model theModel) {
		Customer theCustomer = customerDAO.getCustomer(theId);
		customerDAO.delete(theCustomer);
		return "redirect:/customer/list#jump";
	}
	@GetMapping("/customer/searchById")
	public String searchById(@RequestParam("id") Integer id, Model theModel) {
		if(id == null)
			listCustomer(theModel);
		else {
		int theId = id;
		
		Customer customer = customerDAO.getCustomer(theId);
		List<Customer> searchResult = new ArrayList<Customer>();
		
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);
		
		searchResult.add(customer);
		theModel.addAttribute("customers", searchResult);
		}
		return "list-customers";
	}
	
}

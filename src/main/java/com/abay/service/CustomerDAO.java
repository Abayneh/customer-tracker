package com.abay.service;

import java.util.List;

import com.abay.model.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();
	public void save(Customer customer);
	public Customer getCustomer(int theId);
	public void delete(Customer theCustomer);
}

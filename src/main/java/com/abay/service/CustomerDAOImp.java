package com.abay.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.abay.model.Customer;

@Repository
public class CustomerDAOImp implements CustomerDAO {
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional
	public List<Customer> getCustomers() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Customer> query =
				currentSession.createQuery("from Customer order by lastName", Customer.class);
		List<Customer> customers = query.getResultList();
		return customers;
	}
	@Transactional
	public void save(Customer customer) {
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
	}
	@Transactional
	public Customer getCustomer(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Customer theCustomer = currentSession.get(Customer.class, theId);
		return theCustomer;
	}
	@Transactional
	public void delete(Customer theCustomer) {
		sessionFactory.getCurrentSession().delete(theCustomer);
	}

}

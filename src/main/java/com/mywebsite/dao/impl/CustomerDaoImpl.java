package com.mywebsite.dao.impl;

import com.mywebsite.dao.CustomerDao;
import com.mywebsite.model.Customer;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomer(Customer customer){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customer);
        session.flush();
    }

    public Customer getCustomerById (int customerId){
        Session session = sessionFactory.getCurrentSession();
        return (Customer) session.get(Customer.class, customerId);
    }

    public List<Customer> getAllCustomers(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM Customer");
        List<Customer> customerList = query.list();
        return customerList;
    }

    public void deleteCustomer(int customerId){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getCustomerById(customerId));
        session.flush();
    }

    public void editCustomer(Customer customer){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customer);
        session.flush();
    }

}

package com.mywebsite.dao;

import com.mywebsite.model.Customer;

import java.util.List;

public interface CustomerDao {

    void addCustomer(Customer customer);

    void editCustomer(Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    void deleteCustomer(int customerId);


}

package com.mywebsite.controller;

import com.mywebsite.dao.CustomerDao;
import com.mywebsite.dao.ProjectDao;
import com.mywebsite.model.Customer;
import com.mywebsite.model.Project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Le on 1/2/2016.
 */

@Controller
public class HomeController {


    @Autowired
    private ProjectDao projectDao;

    @Autowired
    private CustomerDao customerDao;

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/projectList")
    public String getProjects(Model model){
        List<Project> projects = projectDao.getAllProjects();

        model.addAttribute("projects",projects);

        return "projectList";

    }
    @RequestMapping("/registerList")
    public String getCustomers(Model model){
        List<Customer> customers = customerDao.getAllCustomers();

        model.addAttribute("customers",customers);

        return "registerList";

    }


}

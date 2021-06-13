package com.mywebsite.controller;

import com.mywebsite.dao.CustomerDao;
import com.mywebsite.dao.RoleDao;
import com.mywebsite.dao.ProjectDao;
import com.mywebsite.model.Customer;
import com.mywebsite.model.Role;
import com.mywebsite.model.Project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private ProjectDao projectDao;

    @Autowired
    private RoleDao roleDao;

    @Autowired
    private CustomerDao customerDao;



    @RequestMapping("/admin")
    public String adminPage() {
        return "admin";
    }


    @RequestMapping("/admin/projectManagement")
    public String projectManagement(Model model){
        List<Project> projects = projectDao.getAllProjects();
        model.addAttribute("projects",projects);

        return "projectManagement";
    }

    @RequestMapping("/admin/projectManagement/addProject")
    public String addProject(Model model){
        Project project = new Project();
        model.addAttribute("project", project);

        return "addProject";
    }
    @RequestMapping(value = "/admin/projectManagement/addProject", method = RequestMethod.POST)
    public String addProjectPost(@ModelAttribute("project") Project project){
        projectDao.addProject(project);

        return "redirect:/admin/projectManagement";
    }

    @RequestMapping("/admin/projectManagement/deleteProject/{id}")
    public String deleteProject(@PathVariable String id,Model model){
        projectDao.deleteProject(id);
        return "redirect:/admin/projectManagement";
    }

    @RequestMapping("/admin/projectManagement/editProject/{id}")
    public String editProject(@PathVariable("id") String id ,Model model){
        Project project = projectDao.getProjectById(id);

        model.addAttribute(project);

        return "editProject";
    }

    @RequestMapping(value = "/admin/projectManagement/editProject", method = RequestMethod.POST)
    public String editProject(@ModelAttribute("project") Project project, Model model){

        projectDao.editProject(project);

        return "redirect:/admin/projectManagement";
    }

 //Customer management


    @RequestMapping("/admin/registerManagement/registerCustomer")
    public String registerCustomer(Model model){
        Customer customer = new Customer();
        model.addAttribute("customer", customer );
        return "registerCustomer";
    }


    @RequestMapping(value = "/admin/registerManagement/registerCustomer", method = RequestMethod.POST)
    public String addCustomerPost(@ModelAttribute("customer") Customer customer){
        customerDao.addCustomer(customer);

        return "redirect:/admin/registerManagement";
    }

    @RequestMapping("/admin/registerManagement")
    public String registerManagement(Model model){
        List<Customer> customers = customerDao.getAllCustomers();
        model.addAttribute("customers",customers);
        return "registerManagement";
    }
    @RequestMapping("/admin/registerManagement/deleteCustomer/{id}")
    public String deleteCustomer(@PathVariable int id,Model model){
        customerDao.deleteCustomer(id);
        return "redirect:/admin/registerManagement";
    }


    @RequestMapping("/admin/registerManagement/editCustomer/{id}")
    public String editCustomer(@PathVariable("id") int id ,Model model){
        Customer customer = customerDao.getCustomerById(id);
        model.addAttribute(customer);
        return "editCustomer";
    }

    @RequestMapping(value = "/admin/registerManagement/editCustomer", method = RequestMethod.POST)
    public String editCustomer(@ModelAttribute("customer") Customer customer, Model model){
        customerDao.editCustomer(customer);
        return "redirect:/admin/registerManagement";
    }


//Leader role management


    @RequestMapping("/admin/roleManagement/addRole")
    public String addRole(Model model){
        Role role = new Role();
        model.addAttribute("role", role);

        return "addRole";
    }
    @RequestMapping(value = "/admin/roleManagement/addRole", method = RequestMethod.POST)
    public String addRolePost(@ModelAttribute("role") Role role){
        roleDao.addRole(role);

        return "redirect:/admin/roleManagement";
    }

    @RequestMapping("/admin/roleManagement")
    public String roleManagement(Model model){
        List<Role> roles = roleDao.getAllRoles();
        model.addAttribute("roles",roles);
        return "roleManagement";
    }
    @RequestMapping("/admin/roleManagement/deleteRole/{id}")
    public String deleteRole(@PathVariable int id,Model model){
        roleDao.deleteRole(id);
        return "redirect:/admin/roleManagement";
    }

    @RequestMapping("/admin/roleManagement/editRole/{id}")
    public String editRole(@PathVariable("id") int id ,Model model){
        Role role = roleDao.getRoleById(id);
        model.addAttribute(role);
        return "editRole";
    }

    @RequestMapping(value = "/admin/roleManagement/editRole", method = RequestMethod.POST)
    public String editRole(@ModelAttribute("role") Role role, Model model){
        roleDao.editRole(role);
        return "redirect:/admin/roleManagement";
    }



}

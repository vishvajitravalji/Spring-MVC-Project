package com.mywebsite.controller;

import com.mywebsite.dao.RoleDao;
import com.mywebsite.dao.TaskDao;
import com.mywebsite.model.Project;
import com.mywebsite.model.Role;
import com.mywebsite.model.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class LeaderController {

    @Autowired
    private TaskDao taskDao;

    @Autowired
    private RoleDao roleDao;

    @RequestMapping("/leader")
    public String leaderPage() {
        return "leader";
    }



    //Task management

    @RequestMapping("/leader/taskManagement")
    public String taskManagement(Model model){
        List<Task> tasks = taskDao.getAllTasks();
        model.addAttribute("tasks",tasks);

        return "taskManagement";
    }

    @RequestMapping("/leader/taskManagement/addTask")
    public String addTask(Model model){
        Task task = new Task();
        model.addAttribute("task", task);

        return "addTask";
    }
    @RequestMapping(value = "/leader/taskManagement/addTask", method = RequestMethod.POST)
    public String addTaskPost(@ModelAttribute("task") Task task){
        taskDao.addTask(task);

        return "redirect:/leader/taskManagement";
    }

    @RequestMapping("/leader/taskManagement/deleteTask/{id}")
    public String deleteTask(@PathVariable int id, Model model){
        taskDao.deleteTask(id);
        return "redirect:/leader/taskManagement";
    }

    @RequestMapping("/leader/taskManagement/editTask/{id}")
    public String editTask(@PathVariable("id") int id ,Model model){
        Task task = taskDao.getTaskById(id);
        model.addAttribute(task);
        return "editTask";
    }

    @RequestMapping(value = "/leader/taskManagement/editTask", method = RequestMethod.POST)
    public String editTask(@ModelAttribute("task") Task task, Model model){

        taskDao.editTask(task);

        return "redirect:/leader/taskManagement";
    }



    //Member management

    @RequestMapping("/leader/memberManagement")
    public String memberManagement(Model model){
        List<Role> roles = roleDao.getAllRoles();
        model.addAttribute("roles",roles);

        return "memberManagement";
    }

    @RequestMapping("/leader/memberManagement/addMember")
    public String addMember(Model model){
        Role role = new Role();
        model.addAttribute("role", role);

        return "addMember";
    }

    @RequestMapping(value = "/leader/memberManagement/addMember", method = RequestMethod.POST)
    public String addMemberPost(@ModelAttribute("role") Role role){
        roleDao.addRole(role);

        return "redirect:/leader/memberManagement";
    }
    @RequestMapping("/leader/memberManagement/deleteMember/{id}")
    public String deleteMember(@PathVariable int id, Model model){
        roleDao.deleteRole(id);
        return "redirect:/leader/memberManagement";
    }

    @RequestMapping("/leader/memberManagement/editMember/{id}")
    public String editMember(@PathVariable("id") int id ,Model model){
        Role role = roleDao.getRoleById(id);
        model.addAttribute(role);
        return "editMember";
    }

    @RequestMapping(value = "/leader/memberManagement/editMember", method = RequestMethod.POST)
    public String editMember(@ModelAttribute("role") Role role, Model model){

        roleDao.editRole(role);

        return "redirect:/leader/memberManagement";
    }

}

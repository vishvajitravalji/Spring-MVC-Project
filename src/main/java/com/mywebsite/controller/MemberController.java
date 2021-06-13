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
public class MemberController {

    @Autowired
    private TaskDao taskDao;

    @Autowired
    private RoleDao roleDao;


    @RequestMapping("/member")
    public String leaderPage() {
        return "member";
    }


    //Task management

    @RequestMapping("/member/taskManagement1")
    public String taskManagement(Model model) {
        List<Task> tasks = taskDao.getAllTasks();
        model.addAttribute("tasks", tasks);

        return "taskManagement1";
    }


    @RequestMapping("/member/memberManagement1")
    public String memberManagement(Model model){
        List<Role> roles = roleDao.getAllRoles();
        model.addAttribute("roles",roles);

        return "memberManagement1";
    }
}
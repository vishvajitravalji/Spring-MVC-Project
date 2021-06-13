package com.mywebsite.dao.impl;


import com.mywebsite.dao.ProjectDao;
import com.mywebsite.model.Project;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
@Transactional
public class ProjectDaoImpl implements ProjectDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addProject(Project project){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(project);
        session.flush();
    }

    public void editProject(Project project){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(project);
        session.flush();
    }

    public Project getProjectById(String id){
        Session session = sessionFactory.getCurrentSession();
        Project project = (Project) session.get(Project.class,id);
        session.flush();
        return project;
    }

    public List<Project> getAllProjects(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Project");
        List<Project> projects = query.list();
        session.flush();
        return projects;
    }

    public void deleteProject (String id){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getProjectById(id));
        session.flush();
    }
}

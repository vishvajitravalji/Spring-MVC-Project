package com.mywebsite.dao.impl;

import com.mywebsite.dao.TaskDao;
import com.mywebsite.model.Project;
import com.mywebsite.model.Task;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
@Transactional
public class TaskDaoImpl implements TaskDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addTask(Task task){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(task);
        session.flush();
    }

    public void editTask(Task task){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(task);
        session.flush();
    }


    public Task getTaskById(int taskId){
        Session session = sessionFactory.getCurrentSession();
        Task task = (Task) session.get(Task.class,taskId);
        session.flush();
        return task;
    }

    public List<Task> getAllTasks(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Task");
        List<Task> tasks = query.list();
        session.flush();
        return tasks;
    }

    public void deleteTask (int taskId){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getTaskById(taskId));
        session.flush();
    }
}

package com.mywebsite.dao;

import com.mywebsite.model.Role;
import com.mywebsite.model.Task;

import java.util.List;

public interface TaskDao {

    void addTask(Task task);

    void editTask(Task task);

    Task getTaskById (int taskId);

    List<Task> getAllTasks();

    void deleteTask(int taskId);
}

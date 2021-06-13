package com.mywebsite.dao;

import com.mywebsite.model.Project;

import java.util.List;

public interface ProjectDao {

    void addProject(Project project);

    void editProject(Project project);

    Project getProjectById(String id);

    List<Project> getAllProjects();

    void deleteProject(String id);

}

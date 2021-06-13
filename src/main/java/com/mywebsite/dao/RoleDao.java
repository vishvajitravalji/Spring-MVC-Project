package com.mywebsite.dao;

import com.mywebsite.model.Role;

import java.util.List;

public interface RoleDao {

    void addRole(Role leader);

    void editRole(Role leader);

    Role getRoleById (int roleId);

    List<Role> getAllRoles();

    void deleteRole(int roleId);




}

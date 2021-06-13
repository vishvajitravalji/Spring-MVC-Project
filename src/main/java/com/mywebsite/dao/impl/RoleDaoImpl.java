package com.mywebsite.dao.impl;

import com.mywebsite.dao.RoleDao;

import com.mywebsite.model.Role;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
@Transactional
public class RoleDaoImpl implements RoleDao {


    @Autowired
    private SessionFactory sessionFactory;

    public void addRole(Role role){

        Session session = sessionFactory.getCurrentSession();
        Role newUser = new Role();
        newUser.setRoleUsername(role.getRoleUsername());
        newUser.setRolePassword(role.getRoleUsername());
        newUser.setEnabled(true);
        newUser.setRoleId(role.getRoleId());
        newUser.setAuthority("ROLE_LEADER");
        newUser.setAuthority("ROLE_MEMBER");
        session.saveOrUpdate(role);

        session.flush();
    }

    public Role getRoleById (int roleId){
        Session session = sessionFactory.getCurrentSession();
        return (Role) session.get(Role.class, roleId);
    }

    public List<Role> getAllRoles(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM Role");
        List<Role> roleList = query.list();

        return roleList;
    }

    public void deleteRole(int roleId){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getRoleById(roleId));
        session.flush();
    }

    public void editRole(Role role){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(role);
        session.flush();
    }




}

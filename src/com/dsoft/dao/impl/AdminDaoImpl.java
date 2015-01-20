package com.dsoft.dao.impl;

import com.dsoft.dao.AdminDao;
import com.dsoft.entity.*;
import com.dsoft.util.Constants;
import com.dsoft.util.Utils;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;


@Repository
public class AdminDaoImpl implements AdminDao {
    private static Logger logger = Logger.getLogger(AdminDaoImpl.class);

    private HibernateTemplate hibernateTemplate;
    private Session session;
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

    @Override
    public List<User> getAllUserList() {
        return null;
    }

    @Override
    public List<User> getAllUserList(String userName) {
        return null;
    }

    public   int getEntitySize(String entity){
        List list = hibernateTemplate.find("Select count(*) From " + entity );

        if (list != null && list.size() > 0)    {
            return Integer.parseInt((list.get(0)).toString());

        }
        return 0;

    }
}
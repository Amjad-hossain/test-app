package com.dsoft.dao.impl;

import com.dsoft.dao.AdminDao;
import com.dsoft.entity.*;
import com.dsoft.util.Constants;
import com.dsoft.util.Utils;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;


@Repository("adminDao")
@Transactional
public class AdminDaoImpl implements AdminDao {

    private static Logger logger = Logger.getLogger(AdminDaoImpl.class);

    private HibernateTemplate hibernateTemplate;
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

    @Autowired
    private SessionFactory sessionFactory;

    protected final Session getSession(){
        return this.sessionFactory.getCurrentSession();
    }



    @Override
    public List<User> getAllUserList() {
        return hibernateTemplate.find("FROM User" );
    }

    @Override
    public List<User> getAllUserList(String userName) {
        return null;
    }

    public int getEntitySize(String entity){
        Session session = getSession();
        List list = session.createQuery("Select count(*) From " + entity ).list();

        if (list != null && list.size() > 0)    {
            return Integer.parseInt((list.get(0)).toString());

        }
        return 0;

    }

    @Override
    public List<Student> getAllStudent() throws Exception {
        return hibernateTemplate.find("FROM Student" );
    }

    @Override
    public Student getStudent(String studentId) throws Exception {
        return hibernateTemplate.load(Student.class, studentId);
    }

    @Override
    public void saveStudent(Student student) throws Exception {

       hibernateTemplate.save(student);
    }

    @Override
    public List<Standard> getAllStandardList() throws Exception {

        Session session = getSession();
        Query query = session.createQuery("From Standard");
//        List list = hibernateTemplate.find("From Standard");
        List list = query.list();

        if (list != null && list.size() > 0)    {
            return list;

        }
        return null;
    }

    @Override
    public List<Student> getPartialDataList(int page, int rp, String qtype, String query, String sortname, String sortorder, String className) throws Exception {
        Session session = getSession();
        int start = (page - 1)*rp ;
        String sql = " FROM " + className;

        if(!Utils.isEmpty(query)) {
            sql +=  " WHERE "+ qtype+" LIKE :query";
        } else {
            sql +=  " ORDER BY " + sortname + " "+ sortorder;
        }

        logger.debug("SMNLOG:Sql"+sql);


        Query queryObj = session.createQuery(sql);
        if(!Utils.isEmpty(query)) {
            queryObj.setParameter("query",query);
        }
        //queryObj.setParameter("start",start);
        //queryObj.setParameter("rp",rp);

        queryObj.setFirstResult(start);
        queryObj.setMaxResults(rp);

//        logger.debug("SMNLOG:Sql"+queryObj.getQueryString());

        List<Student> list = queryObj.list();

        if (list != null && list.size() > 0)    {
            return list;

        }
        return null;
    }

    @Override
    public void setTuitionFee(TuitionFee tuitionFee) throws Exception {

        hibernateTemplate.save(tuitionFee);
    }

    @Override
    public List<TuitionFee> getTuitionFee(Date fromDate, Date toDate) throws Exception {

        Session session = getSession();
        StringBuffer sql = new StringBuffer();
        sql.append("FROM TuitionFee");

        if(fromDate != null) {
            sql.append("WHERE effectiveDate >= :fromDate and effectiveDate <= :toDate ");
        }
        Query query = session.createQuery(sql.toString());
        if(fromDate != null ) {
            query.setParameter("fromDate ", fromDate);
            if(toDate != null) {
                query.setParameter("toDate ", toDate);
            } else {
                query.setParameter("toDate ", Utils.today());
            }
        }
        return query.list();
    }
}
package com.dsoft.service.impl;

import com.dsoft.dao.AdminDao;
import com.dsoft.entity.*;
import com.dsoft.service.AdminService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    private static Logger logger = Logger.getLogger(AdminServiceImpl.class);

    @Autowired(required = true)
    @Qualifier("adminDao")
    private AdminDao adminDao;

    @Override
    public List<User> getAllUserList() {

      return adminDao.getAllUserList();
    }

    @Override
    public List<User> getAllUserList(String userName) {
        return null;
    }

    public   int getEntitySize(String entity){
        return adminDao.getEntitySize(entity);

    }

    @Override
    public List<Student> getAllStudent() throws Exception {
        return adminDao.getAllStudent();
    }

    @Override
    public Student getStudent(String studentId) throws Exception {
        return adminDao.getStudent(studentId);
    }

    @Override
    public void saveStudent(Student student) throws Exception {
        adminDao.saveStudent(student);
    }

    @Override
    public List<Standard> getAllStandardList() throws Exception {
        return adminDao.getAllStandardList();
    }

    @Override
    public List<Student> getPartialDataList(int page, int rp, String qtype, String query, String sortname, String sortorder, String className) throws Exception {
        return adminDao.getPartialDataList(page,rp,qtype,query,sortname,sortorder,className);
    }

    @Override
    public void updateTuitionFee(TuitionFee tuitionFee) throws Exception {
        adminDao.updateTuitionFee(tuitionFee);
    }

    @Override
    public void saveTuitionFee(List<TuitionFee> tuitionFee) throws Exception {
        adminDao.saveTuitionFee(tuitionFee);
    }

    @Override
    public List<TuitionFee> getTuitionFee(Date fromDate, Date toDate) throws Exception {
        return adminDao.getTuitionFee(fromDate, toDate);
    }

    @Override
    public List<TuitionFeeType> getTuitionFeeType() throws Exception {
        return adminDao.getTuitionFeeType();
    }
}

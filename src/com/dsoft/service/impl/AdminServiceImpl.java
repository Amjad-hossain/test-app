package com.dsoft.service.impl;

import com.dsoft.dao.AdminDao;
import com.dsoft.entity.Student;
import com.dsoft.entity.User;
import com.dsoft.service.AdminService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    private static Logger logger = Logger.getLogger(AdminServiceImpl.class);
    @Autowired(required = true)
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


}

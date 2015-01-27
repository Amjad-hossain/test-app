package com.dsoft.service;

import com.dsoft.entity.Profile;
import com.dsoft.entity.Standard;
import com.dsoft.entity.Student;
import com.dsoft.entity.User;

import javax.servlet.http.HttpServletRequest;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;
import java.util.List;

public interface AdminService {

    List<User> getAllUserList();
    List<User> getAllUserList(String userName);
    int getEntitySize(String entity);
    List<Student> getAllStudent() throws Exception;
    Student getStudent(String studentId) throws Exception;
    void saveStudent(Student profile) throws Exception;
    List<Standard> getAllStandardList() throws Exception;
}
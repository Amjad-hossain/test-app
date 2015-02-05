package com.dsoft.service;

import com.dsoft.entity.*;

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

    List<Student> getPartialDataList(int page, int rp, String qtype, String query, String sortname, String sortorder, String className) throws Exception;

    void updateTuitionFee(TuitionFee tuitionFee) throws Exception;

    void saveTuitionFee(List<TuitionFee> tuitionFee) throws Exception;

    List<TuitionFee> getTuitionFee(Date fromDate, Date toDate) throws Exception;

    List<TuitionFeeType> getTuitionFeeType() throws Exception;

    TuitionFee getTuitionFee(long id) throws Exception;

}
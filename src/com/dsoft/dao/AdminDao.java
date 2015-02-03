package com.dsoft.dao;

import com.dsoft.entity.*;

import java.util.Date;
import java.util.List;

public interface AdminDao {

    List<User> getAllUserList();
    List<User> getAllUserList(String userName);
    int getEntitySize(String entity);

    List<Student> getAllStudent() throws Exception;

    Student getStudent(String studentId) throws Exception;

    void saveStudent(Student student) throws Exception;

    List<Standard> getAllStandardList() throws Exception;

    List<Student> getPartialDataList(int page, int rp, String qtype, String query, String sortname, String sortorder, String tableName) throws Exception;

    List getTuitionFee(Date fromDate, Date toDate) throws Exception;

    void updateTuitionFee(TuitionFee tuitionFee) throws Exception;

    void saveTuitionFee(List<TuitionFee> tuitionFee) throws Exception;

    List<TuitionFeeType> getTuitionFeeType()throws Exception;

}

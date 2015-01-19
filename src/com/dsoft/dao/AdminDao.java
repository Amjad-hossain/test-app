package com.dsoft.dao;

import com.dsoft.entity.User;

import java.util.Date;
import java.util.List;

public interface AdminDao {

    List<User> getAllUserList();
    List<User> getAllUserList(String userName);
    int getEntitySize(String entity);
}

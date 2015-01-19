package com.dsoft.service;

import com.dsoft.entity.User;

import javax.servlet.http.HttpServletRequest;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;
import java.util.List;

public interface AdminService {

    List<User> getAllUserList();
    List<User> getAllUserList(String userName);

}
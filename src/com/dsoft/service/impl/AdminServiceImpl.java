package com.dsoft.service.impl;

import com.dsoft.dao.AdminDao;
import com.dsoft.entity.User;
import com.dsoft.service.AdminService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    private static Logger logger = Logger.getLogger(AdminServiceImpl.class);
    @Autowired(required = true)
    private AdminDao adminDao;

    @Override
	@Transactional(readOnly = true)
    public List<User> getAllUserList() {

        List<User> userList = adminDao.getAllUserList();
        if (userList != null && userList.size() > 0) {
            return userList;
        }
        return null;
    }

    @Override
    public List<User> getAllUserList(String userName) {
        return null;
    }
}

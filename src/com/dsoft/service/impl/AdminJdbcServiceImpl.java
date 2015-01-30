package com.dsoft.service.impl;

import com.dsoft.dao.AdminJdbcDao;
import com.dsoft.entity.*;
import com.dsoft.service.AdminJdbcService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service("adminJdbcService")
public class AdminJdbcServiceImpl implements AdminJdbcService {

    private static Logger logger = Logger.getLogger(AdminJdbcServiceImpl.class);
    @Autowired(required = true)
    private AdminJdbcDao adminJdbcDao;


    public List getPartialDataList( int page, int rp , String qtype, String query, String sortname, String sortorder,String className) {
        return  adminJdbcDao.getPartialDataList( page, rp ,qtype, query,   sortname,   sortorder,className);
    }

    @Override
    public List getPartialDataListWithJoinQuery(int page, int rp, String qtype, String query, String sortname, String sortorder, String className, String joinQuery) {
        return adminJdbcDao.getPartialDataListWithJoinQuery(page,rp,qtype,query,sortname,sortorder,className,joinQuery);
    }

}

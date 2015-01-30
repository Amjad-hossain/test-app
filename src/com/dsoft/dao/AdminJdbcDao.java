package com.dsoft.dao;


import java.util.Date;
import java.util.List;
import java.util.Map;

public interface AdminJdbcDao {

    List getPartialDataList( int page, int rp , String  qtype, String query, String sortname, String sortorder, String className);

    List getPartialDataListWithJoinQuery(int page, int rp, String qtype, String query, String sortname, String sortorder, String className, String joinQuery);
}
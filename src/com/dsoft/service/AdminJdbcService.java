package com.dsoft.service;


import java.util.Date;
import java.util.List;
import java.util.Map;

public interface AdminJdbcService {

    List getPartialDataList( int page, int rp , String  qtype, String query, String sortname, String sortorder, String className);

}
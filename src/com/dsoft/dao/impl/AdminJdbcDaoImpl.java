package com.dsoft.dao.impl;

/**
 * Created with IntelliJ IDEA.
 * User: habib
 * Date: 7/22/13
 * Time: 3:04 PM
 * To change this template use File | Settings | File Templates.
 */

import com.dsoft.dao.AdminJdbcDao;
import com.dsoft.entity.*;
import com.dsoft.util.Constants;
import com.dsoft.util.Utils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.*;

@Repository
public class AdminJdbcDaoImpl implements AdminJdbcDao {
    private static Logger logger = Logger.getLogger(AdminJdbcDaoImpl.class);
    private JdbcTemplate jdbcTemplate;
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;


    @Autowired(required = true)
    public void setJdbcDataSource(DataSource jdbcDataSource) {
        this.jdbcTemplate = new JdbcTemplate(jdbcDataSource);
        this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcDataSource);
    }


/*
    public List getControlIdList(String controlIds,String controlCompareString) {
        String clause = "";
        if (Utils.getLoggedUserRoleName().equals(Role.IA_ANALYST.getLabel())) {
            clause = " AND rp.assign_to ='"+Utils.getLoggedUserName()+"' ";
        }
        if(Utils.getLoggedUserRoleName().equals(Role.IA_MANAGER.getLabel())){
           clause = " AND rcnd.decision = 'Further Action Required' ";
        }

        logger.debug("ControlIds:"+controlIds+" controlCompareString:"+controlCompareString+" clause:"+clause);

        String sql = "SELECT GROUP_CONCAT( pcnd.control_ids ) control_ids,"
                + " GROUP_CONCAT( proactive_transaction_id ) transaction_ids"
//                + ", GROUP_CONCAT(region.id) region_ids"
                + " FROM"
                + " proactive_transaction_CND pcnd"
                + " JOIN proactive_transaction ptx ON(ptx.id = pcnd.proactive_transaction_id)"
                + " JOIN proactive_project pp ON(pp.id = ptx.proactive_project_id)"
//                + " JOIN region ON(region.id = pp.region_id)"
                + " WHERE pcnd.control_ids IS NOT NULL "
                + (Utils.getLoggedUserRoleName().equals(Role.IA_MANAGER.getLabel())? " AND pcnd.decision = 'Further Action Required' " : "")
//                + " AND pcnd.control_ids > '' "
                + (!"0".equals(controlIds)? (!Utils.isEmpty(controlCompareString)? controlCompareString : ""):" AND pcnd.control_ids > '' " )
                + " UNION ALL"
                + " SELECT GROUP_CONCAT( rcnd.control_ids ) control_ids,"
                + " GROUP_CONCAT( reactive_transaction_id ) transaction_ids "
//                + ", GROUP_CONCAT(region.id) region_ids"
                + " FROM "
                + " reactive_transaction_CND rcnd  "
                + " JOIN reactive_transaction rtx ON(rtx.id = rcnd.reactive_transaction_id)"
                + " JOIN reactive_project rp ON(rp.id = rtx.reactive_project_id)"
//                + " JOIN region ON(region.id = rp.region_id)"
                + " WHERE rcnd.control_ids IS NOT NULL "
                + (Utils.getLoggedUserRoleName().equals(Role.IA_MANAGER.getLabel())? " AND rcnd.decision = 'Further Action Required' " : "")
//                + " AND rcnd.control_ids > '' "
                + (!"0".equals(controlIds)? (!Utils.isEmpty(controlCompareString)? controlCompareString : ""):"  AND rcnd.control_ids > '' " )
                + " UNION ALL"
                + " SELECT GROUP_CONCAT( rcnd.control_ids ) control_ids,"
                + " GROUP_CONCAT( real_time_transaction_id ) transaction_ids"
//                + ", GROUP_CONCAT(region.id) region_ids"
                + " FROM "
                + " real_time_transaction_CND rcnd  "
                + " JOIN real_time_transaction rtx ON(rtx.id = rcnd.real_time_transaction_id)"
                + " JOIN real_time_project rp ON(rp.id = rtx.real_time_project_id)"
//                + " JOIN region ON(region.id = rp.region_id)"
                + " WHERE rcnd.control_ids IS NOT NULL "
                + clause
//                + " AND rcnd.control_ids > '' "
                + (!"0".equals(controlIds)? (!Utils.isEmpty(controlCompareString)? controlCompareString : ""):" AND rcnd.control_ids > '' " );
        logger.debug("SMN LOG:SQL:"+sql);
        return jdbcTemplate.queryForList(sql);
    }
*/

}

package com.baseArc.dao;

import com.baseArc.po.UserPo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Description: [公司人员Dao]
 * @Author: [qi.li@funi365.com]
 * @CreateDate: 2017-06-07 20:38
 * @UpdateUser: [] 
 * @UpdateDate: []
 * @UpdateRemark: []
 * @Version:    [v1.0] 
 **/
public interface UserPoDao {
    List<UserPo> listEmployee();

    UserPo findEmployeeByAccount(@Param("account") String account);
}

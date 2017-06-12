package com.baseArc.service;

import com.baseArc.po.UserPo;

import java.util.List;

/**
 * @Description: []
 * @Author: [qi.li@funi365.com]
 * @CreateDate: 2017-06-07 20:51
 * @UpdateUser: [] 
 * @UpdateDate: []
 * @UpdateRemark: []
 * @Version:    [v1.0] 
 **/
public interface UserService {
    List<UserPo> listEmployee();
    UserPo findEmployeeByAccount(String account);
}

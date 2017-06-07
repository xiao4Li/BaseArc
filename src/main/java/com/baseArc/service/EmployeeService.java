package com.baseArc.service;

import com.baseArc.po.EmployeePo;

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
public interface EmployeeService {
    List<EmployeePo> listEmployee();
    EmployeePo findEmployeeByAccount(String account);
}

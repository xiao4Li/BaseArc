package com.baseArc.service.Impl;

import com.baseArc.dao.EmployeePoDao;
import com.baseArc.po.EmployeePo;
import com.baseArc.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: []
 * @Author: [qi.li@funi365.com]
 * @CreateDate: 2017-06-07 20:52
 * @UpdateUser: [] 
 * @UpdateDate: []
 * @UpdateRemark: []
 * @Version:    [v1.0] 
 **/
@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeePoDao employeePoDao;
    @Override
    public List<EmployeePo> listEmployee() {
        return employeePoDao.listEmployee();
    }

    @Override
    public EmployeePo findEmployeeByAccount(String account) {
        return employeePoDao.findEmployeeByAccount(account);
    }
}

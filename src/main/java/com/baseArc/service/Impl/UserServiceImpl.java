package com.baseArc.service.Impl;

import com.baseArc.dao.UserPoDao;
import com.baseArc.po.UserPo;
import com.baseArc.service.UserService;
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
public class UserServiceImpl implements UserService {
    @Autowired
    private UserPoDao userPoDao;
    @Override
    public List<UserPo> listUser() {
        return userPoDao.listUser();
    }

    @Override
    public UserPo findUserByAccount(String account) {
        return userPoDao.findUserByAccount(account);
    }
}

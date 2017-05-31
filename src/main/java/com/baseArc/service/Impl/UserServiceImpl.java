package com.baseArc.service.Impl;

import com.baseArc.dao.UserPoDao;
import com.baseArc.po.UserPo;
import com.baseArc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/5/31
 * @Description: [ xxxx ]
 * @Version: 1.0
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserPoDao userPoDao;
    @Override
    public List<UserPo> listUserPo() {
        return userPoDao.listUserPo();
    }

    @Override
    public UserPo findByUsername(String username) {
        return null;
    }

    @Override
    public UserPo login(String username, String password) {
        return null;
    }
}

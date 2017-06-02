package com.baseArc.service;

import com.baseArc.po.UserPo;

import java.util.List;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/5/31
 * @Description: [ xxxx ]
 * @Version: 1.0
 */
public interface UserService {
    List<UserPo> listUserPo();
    UserPo findByUsername(String username);
    UserPo login(String username, String password);
    UserPo addUserPo(UserPo userPo);
}

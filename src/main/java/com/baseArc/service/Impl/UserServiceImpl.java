package com.baseArc.service.Impl;

import com.baseArc.dao.UserPoDao;
import com.baseArc.po.UserPo;
import com.baseArc.service.UserService;
import org.apache.shiro.crypto.hash.DefaultHashService;
import org.apache.shiro.crypto.hash.HashRequest;
import org.apache.shiro.util.ByteSource;
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
    @Autowired
    private DefaultHashService defaultHashService;
    @Override
    public List<UserPo> listUserPo() {
        return userPoDao.listUserPo();
    }

    @Override
    public UserPo findByUsername(String username) {
        return userPoDao.findByUsername(username);
    }

    @Override
    public UserPo login(String username, String password) {
        return null;
    }

    @Override
    public UserPo addUserPo(UserPo userPo) {
        String salt = userPo.getSalt();

        HashRequest request = new HashRequest.Builder().setSource(ByteSource.Util.bytes(userPo.getPassword()))
                .setSalt(ByteSource.Util.bytes(salt)).build();
        String hex = defaultHashService.computeHash(request).toHex();

        userPo.setPassword(hex);

        return null;
    }
}

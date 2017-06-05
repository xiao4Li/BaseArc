package com.baseArc.dao;

import com.baseArc.po.UserPo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/5/31
 * @Description: [ 用户实体Dao ]
 * @Version: 1.0
 */
public interface UserPoDao {
    List<UserPo> listUserPo();
    UserPo findByUsername(@Param("username") String username);
}

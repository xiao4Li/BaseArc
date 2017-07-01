package com.baseArc.service.Impl;

import com.baseArc.dao.SystemUtilsDao;
import com.baseArc.service.SystemUtilsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Timestamp;

/**
 * @Package: [com.baseArc.service.Impl]
 * @Description: [系统工具类]
 * @Author: [chenye]
 * @CreateDate: [2017/7/1 14:55]
 * @UpdateUser: [chenye(如多次修改保留历史记录，增加修改记录)]
 * @UpdateDate: [2017/7/1 14:55，(如多次修改保留历史记录，增加修改记录)]
 * @UpdateRemark: [说明本次修改内容, (如多次修改保留历史记录，增加修改记录)]
 * @Version: [v1.0]
 */
@Service("systemUtilsServiceImpl")
public class SystemUtilsServiceImpl implements SystemUtilsService{
    @Resource
    private SystemUtilsDao systemUtilsDao;

    @Override
    public Timestamp getSystemDataTime() {
        return systemUtilsDao.getSystemDataTime();
    }
}

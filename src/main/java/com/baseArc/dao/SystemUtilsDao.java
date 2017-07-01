package com.baseArc.dao;

import org.springframework.stereotype.Repository;

import java.sql.Timestamp;

/**
 * @Package: [com.baseArc.dao]
 * @Description: [一句话描述该类的功能]
 * @Author: [chenye]
 * @CreateDate: [2017/7/1 14:55]
 * @UpdateUser: [chenye(如多次修改保留历史记录，增加修改记录)]
 * @UpdateDate: [2017/7/1 14:55，(如多次修改保留历史记录，增加修改记录)]
 * @UpdateRemark: [说明本次修改内容, (如多次修改保留历史记录，增加修改记录)]
 * @Version: [v1.0]
 */
public interface SystemUtilsDao {
    Timestamp getSystemDataTime();
}

package com.baseArc.service;

import java.sql.Timestamp;

/**
 * @Package: [com.baseArc.service]
 * @Description: [一句话描述该类的功能]
 * @Author: [chenye]
 * @CreateDate: [2017/7/1 14:54]
 * @UpdateUser: [chenye(如多次修改保留历史记录，增加修改记录)]
 * @UpdateDate: [2017/7/1 14:54，(如多次修改保留历史记录，增加修改记录)]
 * @UpdateRemark: [说明本次修改内容, (如多次修改保留历史记录，增加修改记录)]
 * @Version: [v1.0]
 */
public interface SystemUtilsService {
    Timestamp getSystemDataTime();
}

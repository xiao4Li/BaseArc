package com.baseArc.dao;

import com.baseArc.po.BusinessRecord;

public interface BusinessRecordMapper {
    int deleteByPrimaryKey(String id);

    int insert(BusinessRecord record);

    int insertSelective(BusinessRecord record);

    BusinessRecord selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(BusinessRecord record);

    int updateByPrimaryKey(BusinessRecord record);
}
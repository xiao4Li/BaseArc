package com.baseArc.support;

import java.util.List;

/**
 * @Description: [XXX XXX]
 * @Author: [qi.li@funi365.com]
 * @CreateDate: 2017-06-20 20:49
 * @UpdateUser: [] 
 * @UpdateDate: []
 * @UpdateRemark: []
 * @Version:    [v1.0] 
 **/
public class PagingResult<T> {
    public PagingResult(List<T> list){
        this.rows = list;
        this.total = list == null ? 0 : list.size();
    }
    private Integer total;
    private List<T> rows;

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}

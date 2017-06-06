package com.baseArc.support;

import com.baseArc.dao.ParseCodeDao;
import com.baseArc.utils.SpringContextUtil;
import org.springframework.util.StringUtils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/6
 * @Description: [ 自定义标签解析 解析错误代码 ]
 * @Version: 1.0
 */
public class ParseCodeTagSupport extends SimpleTagSupport {
    private String key;
    private ParseCodeDao parseCodeDao;
    @Override
    public void doTag() throws JspException, IOException {
        if(parseCodeDao == null){
            parseCodeDao = (ParseCodeDao)SpringContextUtil.getBean(ParseCodeDao.class);
        }
        String value = parseCodeDao.getValue(key);

        if(!StringUtils.hasText(value)){
            value = key;
        }

        PageContext pageContext = (PageContext)getJspContext();
        pageContext.getOut().write(value);
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }
}

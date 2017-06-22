package com.baseArc.utils;

import org.springframework.util.StringUtils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Package: [com.funi.platform.contract.utils]
 * @Description: [日期工具类]
 * @Author: [chenye]
 * @CreateDate: [2017/5/11 16:26]
 * @UpdateUser: [chenye(如多次修改保留历史记录，增加修改记录)]
 * @UpdateDate: [2017/5/11 16:26，(如多次修改保留历史记录，增加修改记录)]
 * @UpdateRemark: [说明本次修改内容, (如多次修改保留历史记录，增加修改记录)]
 * @Version: [v1.0]
 */
public abstract class DateUtils {
    private static final String DATE_FORMAT = "yyyy-MM-dd";
    private static final String DATE_FORMAT_All = "yyyyMMddHHmmss";
    private static ThreadLocal<DateFormat> threadLocal = new ThreadLocal<DateFormat>();

    /**
     * 年月日
     * @return
     */
    public static DateFormat getDateFormat() {
        DateFormat df = threadLocal.get();
        if(df==null){
            df = new SimpleDateFormat(DATE_FORMAT);
            threadLocal.set(df);
        }
        return df;
    }

    public static String formatDate(Date date) {
        if(null==date){
            return "";
        }
        return getDateFormat().format(date);
    }

    public static Date parse(String strDate) {
        if(StringUtils.isEmpty(strDate)){
            return null;
        }
        try{
            return getDateFormat().parse(strDate);
        }catch (ParseException e){
            e.printStackTrace();
            return null;
        }

    }

    /**
     * 年月日时分秒
     * @return
     */
    public static DateFormat getDateFormatAll() {
        DateFormat df = threadLocal.get();
        if(df==null){
            df = new SimpleDateFormat(DATE_FORMAT_All);
            threadLocal.set(df);
        }
        return df;
    }
    public static String formatDateAll(Date date) {
        if(null==date){
            return "";
        }
        return getDateFormatAll().format(date);
    }
    public static Date parseAll(String strDate) {
        if(StringUtils.isEmpty(strDate)){
            return null;
        }
        try{
            return getDateFormatAll().parse(strDate);
        }catch (ParseException e){
            e.printStackTrace();
            return null;
        }

    }
}

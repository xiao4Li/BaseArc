package com.baseArc.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @Package: [com.baseArc.utils]
 * @Description: [properties 资源加载]
 * @Author: [chenye]
 * @CreateDate: [2017/7/1 10:59]
 * @UpdateUser: [chenye(如多次修改保留历史记录，增加修改记录)]
 * @UpdateDate: [2017/7/1 10:59，(如多次修改保留历史记录，增加修改记录)]
 * @UpdateRemark: [说明本次修改内容, (如多次修改保留历史记录，增加修改记录)]
 * @Version: [v1.0]
 */
public class PropertiesReader {
    private static final Logger logger = LoggerFactory.getLogger(PropertiesReader.class);

    public static final Properties readProperties(String resource){
        InputStream inputStream = PropertiesReader.class.getClassLoader().getResourceAsStream(resource);
        Properties properties = new Properties();
        try{
            properties.load(inputStream);
        }catch (IOException e){
            e.printStackTrace();
            logger.error("解析properties文件异常",e);
        }
        return properties;
    }

    public static  void main(String[] args){
        Properties properties = PropertiesReader.readProperties("workFlow.properties");
        System.out.println(properties.get("workFlowKey"));
    }
}

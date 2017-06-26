package com.baseArc.utils;


import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by lenovo on 2015/7/28.
 */
public class ReflectUtils {
    /**
     * 将目标对象属性值转换成map
     * @param obj
     * @param isUpperCayseKey
     * @return
     */
    public static Map<String, Object> getMap(Object obj,boolean isUpperCayseKey) {
        Map<String, Object> map = new HashMap<String, Object>();
        if(null == obj){
            return map;
        }
        // 获取f对象对应类中的所有属性域
        Field[] fields = obj.getClass().getDeclaredFields();
        for (int i = 0, len = fields.length; i < len; i++) {
            String varName = fields[i].getName();
            try {
                // 获取原来的访问控制权限
                boolean accessFlag = fields[i].isAccessible();
                // 修改访问控制权限
                fields[i].setAccessible(true);
                // 获取在对象f中属性fields[i]对应的对象中的变量
                Object o = fields[i].get(obj);
                if (o != null) {
                    if(isUpperCayseKey){
                        varName = varName.toUpperCase();
                    }
                    map.put(varName, o);
                }
                // 恢复访问控制权限
                fields[i].setAccessible(accessFlag);
            } catch (IllegalArgumentException ex) {
                ex.printStackTrace();
            } catch (IllegalAccessException ex) {
                ex.printStackTrace();
            }
        }
        return map;
    }
    public static Map<String, Object> getUppercauseKeyMap(Object obj){
        return getMap(obj,true);
    }

    /**
     * 给目标对象赋值，依赖于取值对象和目标对象相同的字段
     * @param object
     * @param targetObject
     * @param <K>
     * @param <V>
     * @return
     */
    public static <K,V> V toAnotherObject(K object,Class<V> targetObject){
        V target = null;
        try{
            target = targetObject.newInstance();
            Field[] fields = targetObject.getDeclaredFields();
            if(fields.length>0){
                for(Field field : fields){
                    String fieldName = field.getName();
                    String name = Character.toUpperCase(fieldName.charAt(0))+fieldName.substring(1);
                    String get = "get"+name;
                    String set = "set"+name;
                    Method getMethod = object.getClass().getDeclaredMethod(get);
                    if(null == getMethod){
                        continue;
                    }
                    Object value = getMethod.invoke(object);
                    Method setMethod = target.getClass().getMethod(set,field.getType());
                    setMethod.invoke(target,value);
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return target;
    }
}

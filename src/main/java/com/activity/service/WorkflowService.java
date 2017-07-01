package com.activity.service;

import org.activiti.engine.runtime.ProcessInstance;

import java.util.Map;

/**
 * 工作流接口
 * Created by chenye on 2017/6/17.
 */
public interface WorkflowService {
    /**
     * 启动工作流
     * @param workFlowKey 工作流id
     * @param businessKey 业务件号
     * @param variables 其余参数
     */
    ProcessInstance start(String workFlowKey, String businessKey, Map<String,Object> variables);

    /**
     * 完成任务
     * @param businessKey 业务件号
     * @param variables 其余参数
     */
    void complete(String processInstanceId,String businessKey,Map<String,Object> variables);
}

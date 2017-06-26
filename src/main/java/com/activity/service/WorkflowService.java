package com.activity.service;

import java.util.Map;

/**
 * 工作流接口
 * Created by chenye on 2017/6/17.
 */
public interface WorkflowService {
    /**
     * 启动工作流
     * @param workFlowKey 工作流id
     * @param workFlowVersion 工作流版本号
     * @param businessKey 业务件号
     * @param variables 其余参数
     */
    void start(String workFlowKey,String workFlowVersion,String businessKey,Map<String,Object> variables);

    /**
     * 完成任务
     * @param workFlowKey 工作流id
     * @param workFlowVersion 工作流版本号
     * @param businessKey 业务件号
     * @param variables 其余参数
     */
    void complete(String workFlowKey,String workFlowVersion,String businessKey,Map<String,Object> variables);
}

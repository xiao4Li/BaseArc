package com.activity.service.impl;

import com.activity.service.WorkflowService;
import com.google.common.base.Strings;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;

import javax.annotation.Resource;
import java.util.Map;

/**
 * 文件描述:
 * Created by chenye on 2017/6/17.
 */
public class WorkflowServiceImpl implements WorkflowService{
    @Resource
    private RuntimeService runtimeService;
    @Resource
    private TaskService taskService;
    @Override
    public void start(String workFlowKey, String workFlowVersion, String businessKey, Map<String, Object> variables) {
        /*通过workflowkey 和 version 查询出对应流程的实例id*/
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("flow",businessKey,variables);
        System.out.println(processInstance.getId());
        System.out.println(processInstance.getBusinessKey());
        System.out.println(processInstance.getProcessDefinitionId());
        /*记录流开启信息*/
    }

    @Override
    public void complete(String workFlowKey, String workFlowVersion, String businessKey, Map<String, Object> variables) {
        /*查询出对应的流程信息*/
        String userId = (String) variables.get("userId");
        TaskQuery taskQuery = taskService.createTaskQuery().processInstanceBusinessKey(businessKey);
        if(!Strings.isNullOrEmpty(userId)){
            taskQuery.taskAssignee(userId);
        }
        Task task = taskQuery.processInstanceId("").singleResult();
        taskService.complete(task.getId(),variables);
        /*记录完成的流程信息*/
    }

    /**
     * 认领任务
     * @param workFlowKey
     * @param workFlowVersion
     * @param businessKey
     * @param variables
     */
    public void assignTask(String workFlowKey, String workFlowVersion, String businessKey,String userId, Map<String, Object> variables){
        Task task = taskService.createTaskQuery().processInstanceBusinessKey(businessKey).processInstanceId("").singleResult();
        taskService.claim(task.getId(),userId);
        /*记录认领任务信息*/
    }

}

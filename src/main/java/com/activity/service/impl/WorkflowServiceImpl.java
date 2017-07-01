package com.activity.service.impl;

import com.activity.service.WorkflowService;
import com.google.common.base.Strings;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @Package: [com.activity.service.impl]
 * @Description: [一句话描述该类的功能]
 * @Author: [chenye]
 * @CreateDate: [2017/7/1 10:55]
 * @UpdateUser: [chenye(如多次修改保留历史记录，增加修改记录)]
 * @UpdateDate: [2017/7/1 10:55，(如多次修改保留历史记录，增加修改记录)]
 * @UpdateRemark: [说明本次修改内容, (如多次修改保留历史记录，增加修改记录)]
 * @Version: [v1.0]
 */
@Service("workflowServiceImpl")
public class WorkflowServiceImpl implements WorkflowService{

    @Resource
    private RuntimeService runtimeService;
    @Resource
    private TaskService taskService;
    @Override
    public ProcessInstance start(String workFlowKey, String businessKey, Map<String, Object> variables) {
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(workFlowKey,businessKey,variables);
        return processInstance;
    }

    @Override
    public void complete(String processInstanceId,String businessKey, Map<String, Object> variables) {
        /*查询出对应的流程信息*/
        String userId = (String) variables.get("userId");
        TaskQuery taskQuery = taskService.createTaskQuery().processInstanceBusinessKey(businessKey).processInstanceId("");
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

    /**
     * 业务启动
     * @param workFlowKey
     * @param businessKey
     * @param variables
     */
    public void businessStart(String workFlowKey, String businessKey, Map<String, Object> variables){
        ProcessInstance processInstance = this.start(workFlowKey,businessKey,variables);
        processInstance.getId();
        /*记录操作记录并将流程实例id写到业务主表*/
    }
    public void businessComplete(String processInstanceId,String businessKey, Map<String, Object> variables){
        this.complete(processInstanceId,businessKey,variables);
        /*记录操作记录*/
    }
}

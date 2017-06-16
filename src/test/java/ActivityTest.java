import org.activiti.engine.*;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

/**
 * Created by cy105 on 2017/6/16.
 */
public class ActivityTest {

    @Test
    @Before
    public void createTable(){
        ProcessEngineConfiguration processEngineConfiguration = ProcessEngineConfiguration.createStandaloneProcessEngineConfiguration();
        processEngineConfiguration.setJdbcDriver("com.mysql.jdbc.Driver");
        processEngineConfiguration.setJdbcUrl("jdbc:mysql://localhost:3306/myactivity?useUnicode=true&characterEncoding=utf8");
        processEngineConfiguration.setJdbcUsername("root");
        processEngineConfiguration.setJdbcPassword("123");
        /**
         * public static final String DB_SCHEMA_UPDATE_FALSE =
         * "false";不能自动创建表，需要表存在 public static final String
         * DB_SCHEMA_UPDATE_CREATE_DROP = "create-drop";先删除表再创建表 public static
         * final String DB_SCHEMA_UPDATE_TRUE = "true";如果表不存在，自动创建表
         */
//        processEngineConfiguration.setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE);
        processEngineConfiguration.buildProcessEngine();
    }

    @Test
    public void deploy(){
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
        RepositoryService repositoryService = processEngine.getRepositoryService();
        repositoryService.createDeployment().addClasspathResource("flow.bpmn").name("mySecondFlow").deploy();
    }

    private static String businessKey = "123456";
    private static String other_businessKey = "654321";

    @Test
    public void startFlow(){
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
        ProcessInstance processInstance = processEngine.getRuntimeService().startProcessInstanceByKey("flow",businessKey);
        System.out.println(processInstance.getId());
        System.out.println(processInstance.getBusinessKey());
        System.out.println(processInstance.getProcessDefinitionId());
//        22501
//        123456
//        flow:3:20004
//        flow

    }
    @Test
    public void completeTask(){
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
        TaskService taskService = processEngine.getTaskService();
        Task task = taskService.createTaskQuery().processInstanceBusinessKey(businessKey).taskAssignee(other_businessKey).singleResult();
        taskService.complete(task.getId());
    }

    @Test
    public void assignTask(){
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
        TaskService taskService = processEngine.getTaskService();
        Task task = taskService.createTaskQuery().processInstanceBusinessKey(businessKey).taskName("view").singleResult();
//        taskService.complete(task.getId());
        taskService.setAssignee(task.getId(),other_businessKey);
//        taskService.claim(task.getId(),other_businessKey);// 该方法会检测任务是否已经被认领，如果被认领则会抛出ActivitiTaskAlreadyClaimedException


        List<Task> tasks = taskService.createTaskQuery().processInstanceBusinessKey(other_businessKey).list();
        for(Task t : tasks){
            System.out.println("Name:"+t.getName());
            System.out.println("Assignee:"+t.getAssignee());
            System.out.println("Id:"+t.getId());
            System.out.println("TaskDefinitionKey:"+t.getTaskDefinitionKey());
        }
    }
    //只能查询有效任务
    @Test
    public void TaskService(){
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
        TaskService taskService = processEngine.getTaskService();
        List<Task> tasks = taskService.createTaskQuery().processInstanceBusinessKey(businessKey).list();
        for(Task task : tasks){
            System.out.println("Name:"+task.getName());
            System.out.println("Assignee:"+task.getAssignee());
            System.out.println("Id:"+task.getId());
            System.out.println("TaskDefinitionKey:"+task.getTaskDefinitionKey());
        }
    }
    @Test
    public void findHistory(){
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
        HistoryService historyService = processEngine.getHistoryService();
        List<HistoricTaskInstance> list = historyService.createHistoricTaskInstanceQuery().processInstanceBusinessKey(businessKey).list();
        for(HistoricTaskInstance his : list){
            System.out.println("id:"+his.getId());
            System.out.println("Name:"+his.getName());
            System.out.println("TaskDefinitionKey:"+his.getTaskDefinitionKey());
            System.out.println("Assignee:"+his.getAssignee());
            System.out.println("+++++++++++++======================++++++++++++++++++++++");
        }
    }
}

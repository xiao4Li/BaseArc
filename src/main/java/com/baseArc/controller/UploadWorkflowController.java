package com.baseArc.controller;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.Deployment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;

/**
 * 文件描述:工作流上传
 * Created by chenye on 2017/6/17.
 */
@Controller
@RequestMapping("/uploadWorkflowController")
public class UploadWorkflowController {
    @Resource
    private RepositoryService repositoryService;

    @RequestMapping("/page")
    public String upload(){
        return "pages/upload";
    }

    @RequestMapping("/upload")
    public String upload(MultipartFile file, String fileName, Model model){
        try{
            repositoryService.createDeployment().addInputStream(fileName,file.getInputStream()).name(fileName).deploy();
            /*记录上传流程图的信息*/
        }catch (Exception e){
            e.printStackTrace();
            /*抛出异常*/
        }
        model.addAttribute("message","上传成功");
        return "forward:/uploadWorkflowController/page";
    }

}

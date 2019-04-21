package com.ruoyi.chuanjing.controller;

import com.ruoyi.chuanjing.domain.InterviewPOSProfitSummary;
import com.ruoyi.chuanjing.service.IInterviewPOSService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author ChuanJing
 * @date 2019/4/18 21:29
 */

@Controller
@RequestMapping("/interview/pos")
public class InterviewPOSController {

    private String prefix = "interview/pos";

    @Autowired
    private IInterviewPOSService interviewPOSService;

    @RequiresPermissions("interview:POS:view")
    @GetMapping()
    public String pos() {
        return prefix + "/profitSummary";
    }

    /**
     * 获取收益概览
     * @return
     */
    @RequestMapping("/getProfitSummary")
    @ResponseBody
    public InterviewPOSProfitSummary getProfitSummary(Integer id){
        return interviewPOSService.getProfitSummary(id);
    }
}
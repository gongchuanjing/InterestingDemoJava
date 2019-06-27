package tk.chuanjing.demo.vue.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import tk.chuanjing.demo.vue.domain.InterviewPOSProfitSummary;
import tk.chuanjing.demo.vue.service.IInterviewPOSService;

/**
 * @author ChuanJing
 * @date 2019/4/18 21:29
 */

@Controller
@RequestMapping("/InterviewPOS")
@ResponseBody
public class InterviewPOSController {

    @Autowired
    private IInterviewPOSService interviewPOSService;

    /**
     * 获取收益概览
     * @return
     */
    @RequestMapping("/getProfitSummary")
    public InterviewPOSProfitSummary getProfitSummary(Integer id){
        return interviewPOSService.getProfitSummary(id);
    }
}
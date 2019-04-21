package tk.chuanjing.demo.vue.service;

import tk.chuanjing.demo.vue.domain.InterviewPOSProfitSummary;

/**
 * @author ChuanJing
 * @date 2019/4/18 21:27
 */
public interface IInterviewPOSService {
    InterviewPOSProfitSummary getProfitSummary(Integer id);
}

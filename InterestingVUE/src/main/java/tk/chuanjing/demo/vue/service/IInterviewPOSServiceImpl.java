package tk.chuanjing.demo.vue.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.chuanjing.demo.vue.dao.IInterviewPOSDao;
import tk.chuanjing.demo.vue.domain.InterviewPOSProfitSummary;
import tk.chuanjing.demo.vue.domain.InterviewPosPosConsumeNum;
import tk.chuanjing.demo.vue.domain.InterviewPosSellPosNum;

/**
 * @author ChuanJing
 * @date 2019/4/18 21:33
 */
@Service
public class IInterviewPOSServiceImpl implements IInterviewPOSService {

    @Autowired
    private IInterviewPOSDao interviewPOSDao;

    /**
     * 销售10台，是50元，
     * 销售20台，是60元，
     * 销售30台，是80元。
     *
     * 然后从销售的这些付款机，然后进行收款，
     * 收款200单是0.3得提成，
     * 收款500单是0.32得提成。
     *
     * @param id
     * @return
     */
    @Override
    public InterviewPOSProfitSummary getProfitSummary(Integer id) {
        //得到该用户销售的POS的刷卡笔数
        InterviewPosPosConsumeNum posConsumeNum = interviewPOSDao.findPosConsumeNumByUserId(id);

        //得到该用户销售的POS台数
        InterviewPosSellPosNum sellPosNum = interviewPOSDao.findSellPosNumByUserId(id);

        // 组装  收益概览
        InterviewPOSProfitSummary profitSummary = new InterviewPOSProfitSummary();
        profitSummary.setUserId(id);

        //POS销售台数
        int posNumber = sellPosNum.getPOSNumber();
        profitSummary.setPOSNumber(posNumber);
        //POS销售台数收益
        double POSNumberProfit = 0;

        //销售10台，是50元，销售20台，是60元，销售30台，是80元。
        if(posNumber < 10) {
            POSNumberProfit = 0;//小于10单，没有提成
        } else if (posNumber >= 10 && posNumber < 20) {
            POSNumberProfit = posNumber * 50;
        } else if (posNumber >= 20 && posNumber < 30) {
            POSNumberProfit = posNumber * 60;
        } else {
            POSNumberProfit = posNumber * 80;
        }
        profitSummary.setPOSNumberProfit(POSNumberProfit);


        //POS收款笔数
        int posConsumeNumber = posConsumeNum.getPOSConsumeNumber();
        profitSummary.setPOSConsumeNumber(posConsumeNumber);
        //POS收款笔数收益
        double POSConsumeNumberProfit = 0;

        //收款200单是0.3得提成，收款500单是0.32得提成。
        if(posConsumeNumber < 200) {
            POSConsumeNumberProfit = 0;//小于200单，没有提成
        } else if (posConsumeNumber >= 200 && posConsumeNumber < 500) {
            POSConsumeNumberProfit = posConsumeNumber * 0.3;
        } else {
            POSConsumeNumberProfit = posConsumeNumber * 0.32;
        }
        profitSummary.setPOSConsumeNumberProfit(POSConsumeNumberProfit);

        return profitSummary;
    }
}

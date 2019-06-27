package tk.chuanjing.demo.vue.dao;

import org.apache.ibatis.annotations.Select;
import tk.chuanjing.demo.vue.domain.InterviewPosPosConsumeNum;
import tk.chuanjing.demo.vue.domain.InterviewPosSellPosNum;

/**
 * @author ChuanJing
 * @date 2019/4/18 21:15
 */
public interface IInterviewPOSDao {

    /**
     * 根据user_id查询该用户销售POS的台数
     * @param id
     * @return
     */
    @Select("select * from interview_pos_sell_pos_num where user_id = #{id} ")
    InterviewPosSellPosNum findSellPosNumByUserId(Integer id);

    /**
     * 根据user_id查询该用户销售POS机刷卡的总单数
     * @param id
     * @return
     */
    @Select("select * from interview_pos_pos_consume_num where user_id = #{id} ")
    InterviewPosPosConsumeNum findPosConsumeNumByUserId(Integer id);
}

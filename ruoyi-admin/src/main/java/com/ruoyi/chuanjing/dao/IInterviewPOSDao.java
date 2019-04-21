package com.ruoyi.chuanjing.dao;

import com.ruoyi.chuanjing.domain.InterviewPosPosConsumeNum;
import com.ruoyi.chuanjing.domain.InterviewPosSellPosNum;
import org.apache.ibatis.annotations.Select;

/**
 * @author ChuanJing
 * @date 2019/4/18 21:15
 */
//@Mapper
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

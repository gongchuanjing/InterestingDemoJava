package com.ruoyi.chuanjing.domain;

import java.util.Objects;

/**
 * 收益概览实体类
 *
 * @author ChuanJing
 * @date 2019/4/18 21:35
 */
public class InterviewPOSProfitSummary {

    private int userId;
    private int POSNumber;
    private double POSNumberProfit;
    private int POSConsumeNumber;
    private double POSConsumeNumberProfit;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPOSNumber() {
        return POSNumber;
    }

    public void setPOSNumber(int POSNumber) {
        this.POSNumber = POSNumber;
    }

    public double getPOSNumberProfit() {
        return POSNumberProfit;
    }

    public void setPOSNumberProfit(double POSNumberProfit) {
        this.POSNumberProfit = POSNumberProfit;
    }

    public int getPOSConsumeNumber() {
        return POSConsumeNumber;
    }

    public void setPOSConsumeNumber(int POSConsumeNumber) {
        this.POSConsumeNumber = POSConsumeNumber;
    }

    public double getPOSConsumeNumberProfit() {
        return POSConsumeNumberProfit;
    }

    public void setPOSConsumeNumberProfit(double POSConsumeNumberProfit) {
        this.POSConsumeNumberProfit = POSConsumeNumberProfit;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        InterviewPOSProfitSummary that = (InterviewPOSProfitSummary) o;
        return userId == that.userId &&
                POSNumber == that.POSNumber &&
                POSNumberProfit == that.POSNumberProfit &&
                POSConsumeNumber == that.POSConsumeNumber &&
                POSConsumeNumberProfit == that.POSConsumeNumberProfit;
    }

    @Override
    public int hashCode() {

        return Objects.hash(userId, POSNumber, POSNumberProfit, POSConsumeNumber, POSConsumeNumberProfit);
    }

    @Override
    public String toString() {
        return "InterviewPOSProfitSummary{" +
                "userId=" + userId +
                ", POSNumber=" + POSNumber +
                ", POSNumberProfit=" + POSNumberProfit +
                ", POSConsumeNumber=" + POSConsumeNumber +
                ", POSConsumeNumberProfit=" + POSConsumeNumberProfit +
                '}';
    }
}

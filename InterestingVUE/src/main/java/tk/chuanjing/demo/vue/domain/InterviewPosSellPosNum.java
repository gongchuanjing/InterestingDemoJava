package tk.chuanjing.demo.vue.domain;

import java.util.Objects;

/**
 * @author ChuanJing
 * @date 2019/4/18 21:13
 */
public class InterviewPosSellPosNum {

    private int userId;
    private int POSNumber;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        InterviewPosSellPosNum that = (InterviewPosSellPosNum) o;
        return userId == that.userId &&
                POSNumber == that.POSNumber;
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, POSNumber);
    }

    @Override
    public String toString() {
        return "InterviewPosSellPosNum{" +
                "userId=" + userId +
                ", POSNumber=" + POSNumber +
                '}';
    }
}

package tk.chuanjing.demo.vue.domain;

import java.util.Objects;

/**
 * @author ChuanJing
 * @date 2019/4/18 21:23
 */
public class InterviewPosPosConsumeNum {

    private int userId;
    private int POSConsumeNumber;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPOSConsumeNumber() {
        return POSConsumeNumber;
    }

    public void setPOSConsumeNumber(int POSConsumeNumber) {
        this.POSConsumeNumber = POSConsumeNumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        InterviewPosPosConsumeNum that = (InterviewPosPosConsumeNum) o;
        return userId == that.userId &&
                POSConsumeNumber == that.POSConsumeNumber;
    }

    @Override
    public int hashCode() {

        return Objects.hash(userId, POSConsumeNumber);
    }

    @Override
    public String toString() {
        return "InterviewPosPosConsumeNum{" +
                "userId=" + userId +
                ", POSConsumeNumber=" + POSConsumeNumber +
                '}';
    }
}

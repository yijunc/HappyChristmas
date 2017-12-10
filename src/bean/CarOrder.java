package bean;

import java.util.Date;

public class CarOrder {
    private int mId;
    private String orderTaker;
    private String orderPoster;
    private int mAmount;
    private Date orderDate;
    private Date orderStart;
    private Date orderEnd;
    private int carId;
    private int mStatus;

    public CarOrder(int mId, String orderTaker, String orderPoster, int mAmount, Date orderDate, Date orderStart, Date orderEnd, int carId, int mStatus) {
        this.mId = mId;
        this.orderTaker = orderTaker;
        this.orderPoster = orderPoster;
        this.mAmount = mAmount;
        this.orderDate = orderDate;
        this.orderStart = orderStart;
        this.orderEnd = orderEnd;
        this.carId = carId;
        this.mStatus = mStatus;
    }

    public CarOrder(){

    }

    public int getmId() {
        return mId;
    }

    public void setmId(int mId) {
        this.mId = mId;
    }

    public String getOrderTaker() {
        return orderTaker;
    }

    public void setOrderTaker(String orderTaker) {
        this.orderTaker = orderTaker;
    }

    public String getOrderPoster() {
        return orderPoster;
    }

    public void setOrderPoster(String orderPoster) {
        this.orderPoster = orderPoster;
    }

    public int getmAmount() {
        return mAmount;
    }

    public void setmAmount(int mAmount) {
        this.mAmount = mAmount;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getOrderStart() {
        return orderStart;
    }

    public void setOrderStart(Date orderStart) {
        this.orderStart = orderStart;
    }

    public Date getOrderEnd() {
        return orderEnd;
    }

    public void setOrderEnd(Date orderEnd) {
        this.orderEnd = orderEnd;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public int getmStatus() {
        return mStatus;
    }

    public void setmStatus(int mStatus) {
        this.mStatus = mStatus;
    }
}

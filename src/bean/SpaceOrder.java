package bean;

import java.util.Date;

public class SpaceOrder {
    private int orderId;
    private int orderSpaceId;
    private String orderTaker;
    private Date orderStart;
    private Date orderEnd;
    private int orderPrice;
    private int orderSpaceType;
    private int orderStatus;

    public SpaceOrder(int orderId, int orderSpaceId, String orderTaker, Date orderStart, Date orderEnd, int orderPrice, int orderSpaceType, int orderStatus) {
        this.orderId = orderId;
        this.orderSpaceId = orderSpaceId;
        this.orderTaker = orderTaker;
        this.orderStart = orderStart;
        this.orderEnd = orderEnd;
        this.orderPrice = orderPrice;
        this.orderSpaceType = orderSpaceType;
        this.orderStatus = orderStatus;
    }

    public SpaceOrder() {
    }

    public int getOrderId() {
        return orderId;
    }

    public SpaceOrder setOrderId(int orderId) {
        this.orderId = orderId;
        return this;
    }

    public int getOrderSpaceId() {
        return orderSpaceId;
    }

    public SpaceOrder setOrderSpaceId(int orderSpaceId) {
        this.orderSpaceId = orderSpaceId;
        return this;
    }

    public String getOrderTaker() {
        return orderTaker;
    }

    public SpaceOrder setOrderTaker(String orderTaker) {
        this.orderTaker = orderTaker;
        return this;
    }

    public Date getOrderStart() {
        return orderStart;
    }

    public SpaceOrder setOrderStart(Date orderStart) {
        this.orderStart = orderStart;
        return this;
    }

    public Date getOrderEnd() {
        return orderEnd;
    }

    public SpaceOrder setOrderEnd(Date orderEnd) {
        this.orderEnd = orderEnd;
        return this;
    }

    public int getOrderPrice() {
        return orderPrice;
    }

    public SpaceOrder setOrderPrice(int orderPrice) {
        this.orderPrice = orderPrice;
        return this;
    }

    public int getOrderSpaceType() {
        return orderSpaceType;
    }

    public SpaceOrder setOrderSpaceType(int orderSpaceType) {
        this.orderSpaceType = orderSpaceType;
        return this;
    }

    public int getOrderStatus() {
        return orderStatus;
    }

    public SpaceOrder setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
        return this;
    }
}

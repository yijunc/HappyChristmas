package bean;

public class SpaceOrderSearch {
    private String orderId;
    private String orderSpaceId;
    private String orderTaker;
    private String orderStart;
    private String orderEnd;
    private String orderPrice;
    private String orderSpaceType;
    private String orderStatus;

    public String getOrderId() {
        return orderId;
    }

    public SpaceOrderSearch setOrderId(String orderId) {
        this.orderId = orderId;
        return this;
    }

    public String getOrderSpaceId() {
        return orderSpaceId;
    }

    public SpaceOrderSearch setOrderSpaceId(String orderSpaceId) {
        this.orderSpaceId = orderSpaceId;
        return this;
    }

    public String getOrderTaker() {
        return orderTaker;
    }

    public SpaceOrderSearch setOrderTaker(String orderTaker) {
        this.orderTaker = orderTaker;
        return this;
    }

    public String getOrderStart() {
        return orderStart;
    }

    public SpaceOrderSearch setOrderStart(String orderStart) {
        this.orderStart = orderStart;
        return this;
    }

    public String getOrderEnd() {
        return orderEnd;
    }

    public SpaceOrderSearch setOrderEnd(String orderEnd) {
        this.orderEnd = orderEnd;
        return this;
    }

    public String getOrderPrice() {
        return orderPrice;
    }

    public SpaceOrderSearch setOrderPrice(String orderPrice) {
        this.orderPrice = orderPrice;
        return this;
    }

    public String getOrderSpaceType() {
        return orderSpaceType;
    }

    public SpaceOrderSearch setOrderSpaceType(String orderSpaceType) {
        this.orderSpaceType = orderSpaceType;
        return this;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public SpaceOrderSearch setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
        return this;
    }
}

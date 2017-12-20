package bean;

import java.util.Date;

public class CarAvailability {
    private int mId;
    private int carId;
    private Date carDateStart;
    private Date carDateEnd;
    private int carPriceDaily;
    private String carType;
    private String carOwner;
    private String carBrand;
    private int carSeat;
    private int carStatus;
    private float carRating;
    private int carCustomer;

    public int getmId() {
        return mId;
    }

    public CarAvailability setmId(int mId) {
        this.mId = mId;
        return this;
    }

    public int getCarId() {
        return carId;
    }

    public CarAvailability setCarId(int carId) {
        this.carId = carId;
        return this;
    }

    public Date getCarDateStart() {
        return carDateStart;
    }

    public CarAvailability setCarDateStart(Date carDateStart) {
        this.carDateStart = carDateStart;
        return this;
    }

    public Date getCarDateEnd() {
        return carDateEnd;
    }

    public CarAvailability setCarDateEnd(Date carDateEnd) {
        this.carDateEnd = carDateEnd;
        return this;
    }

    public int getCarPriceDaily() {
        return carPriceDaily;
    }

    public CarAvailability setCarPriceDaily(int carPriceDaily) {
        this.carPriceDaily = carPriceDaily;
        return this;
    }

    public String getCarType() {
        return carType;
    }

    public CarAvailability setCarType(String carType) {
        this.carType = carType;
        return this;
    }

    public String getCarOwner() {
        return carOwner;
    }

    public CarAvailability setCarOwner(String carOwner) {
        this.carOwner = carOwner;
        return this;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public CarAvailability setCarBrand(String carBrand) {
        this.carBrand = carBrand;
        return this;
    }

    public int getCarSeat() {
        return carSeat;
    }

    public CarAvailability setCarSeat(int carSeat) {
        this.carSeat = carSeat;
        return this;
    }

    public int getCarStatus() {
        return carStatus;
    }

    public CarAvailability setCarStatus(int carStatus) {
        this.carStatus = carStatus;
        return this;
    }

    public float getCarRating() {
        return carRating;
    }

    public CarAvailability setCarRating(float carRating) {
        this.carRating = carRating;
        return this;
    }

    public int getCarCustomer() {
        return carCustomer;
    }

    public CarAvailability setCarCustomer(int carCustomer) {
        this.carCustomer = carCustomer;
        return this;
    }

    public CarAvailability(){

    }

    public CarAvailability(int mId, int carId, Date carDateStart, Date carDateEnd, int carPriceDaily, String carType, String carOwner, String carBrand, int carSeat, int carStatus, float carRating, int carCustomer) {
        this.mId = mId;
        this.carId = carId;
        this.carDateStart = carDateStart;
        this.carDateEnd = carDateEnd;
        this.carPriceDaily = carPriceDaily;
        this.carType = carType;
        this.carOwner = carOwner;
        this.carBrand = carBrand;
        this.carSeat = carSeat;
        this.carStatus = carStatus;
        this.carRating = carRating;
        this.carCustomer = carCustomer;
    }

    public Object clone() {
        CarAvailability ret = null;
        try{
            ret = (CarAvailability) super.clone();
        }catch(CloneNotSupportedException e) {
            e.printStackTrace();
        }
        return ret;
    }
}

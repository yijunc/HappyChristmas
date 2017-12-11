package bean;

import java.util.Date;

public class Space {
    private int spaceId;
    private String spaceCity;
    private String spaceDetailLoc;
    private String spaceType;
    private int spaceSmall;
    private int spaceSmallPrice;
    private int spaceSmallLeft;
    private int spaceLarge;
    private int spaceLargeLeft;
    private int spaceLargePrice;
    private Date spaceDate;

    public Space() {
    }

    public Space(int spaceId, String spaceCity, String spaceDetailLoc, String spaceType, int spaceSmall, int spaceSmallPrice, int spaceSmallLeft, int spaceLarge, int spaceLargeLeft, int spaceLargePrice, Date spaceDate) {
        this.spaceId = spaceId;
        this.spaceCity = spaceCity;
        this.spaceDetailLoc = spaceDetailLoc;
        this.spaceType = spaceType;
        this.spaceSmall = spaceSmall;
        this.spaceSmallPrice = spaceSmallPrice;
        this.spaceSmallLeft = spaceSmallLeft;
        this.spaceLarge = spaceLarge;
        this.spaceLargeLeft = spaceLargeLeft;
        this.spaceLargePrice = spaceLargePrice;
        this.spaceDate = spaceDate;
    }

    public int getSpaceId() {
        return spaceId;
    }

    public Space setSpaceId(int spaceId) {
        this.spaceId = spaceId;
        return this;
    }

    public String getSpaceCity() {
        return spaceCity;
    }

    public Space setSpaceCity(String spaceCity) {
        this.spaceCity = spaceCity;
        return this;
    }

    public String getSpaceDetailLoc() {
        return spaceDetailLoc;
    }

    public Space setSpaceDetailLoc(String spaceDetailLoc) {
        this.spaceDetailLoc = spaceDetailLoc;
        return this;
    }

    public String getSpaceType() {
        return spaceType;
    }

    public Space setSpaceType(String spaceType) {
        this.spaceType = spaceType;
        return this;
    }

    public int getSpaceSmall() {
        return spaceSmall;
    }

    public Space setSpaceSmall(int spaceSmall) {
        this.spaceSmall = spaceSmall;
        return this;
    }

    public int getSpaceSmallPrice() {
        return spaceSmallPrice;
    }

    public Space setSpaceSmallPrice(int spaceSmallPrice) {
        this.spaceSmallPrice = spaceSmallPrice;
        return this;
    }

    public int getSpaceSmallLeft() {
        return spaceSmallLeft;
    }

    public Space setSpaceSmallLeft(int spaceSmallLeft) {
        this.spaceSmallLeft = spaceSmallLeft;
        return this;
    }

    public int getSpaceLarge() {
        return spaceLarge;
    }

    public Space setSpaceLarge(int spaceLarge) {
        this.spaceLarge = spaceLarge;
        return this;
    }

    public int getSpaceLargeLeft() {
        return spaceLargeLeft;
    }

    public Space setSpaceLargeLeft(int spaceLargeLeft) {
        this.spaceLargeLeft = spaceLargeLeft;
        return this;
    }

    public int getSpaceLargePrice() {
        return spaceLargePrice;
    }

    public Space setSpaceLargePrice(int spaceLargePrice) {
        this.spaceLargePrice = spaceLargePrice;
        return this;
    }

    public Date getSpaceDate() {
        return spaceDate;
    }

    public Space setSpaceDate(Date spaceDate) {
        this.spaceDate = spaceDate;
        return this;
    }
}

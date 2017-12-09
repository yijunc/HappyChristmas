package bean;

import java.util.Date;

/**
 * Created by zhaoning on 2017/12/9.
 */
public class Search {
    private int searchId;
    private String searchName;
    private int searchStatus;
    private int searchBalance;
//    private Date searchOrderDate;
//    private Date searchStartDate;
//    private Date searchEndDate;
private String searchOrderDate;
    private String searchStartDate;
    private String searchEndDate;
    private String dateLastLogined;

    public Search() {
    }

    public int getSearchId() {
        return searchId;
    }

    public Search setSearchId(int searchId) {
        this.searchId = searchId;
        return this;
    }

    public String getSearchName() {
        return searchName;
    }

    public Search setSearchName(String searchName) {
        this.searchName = searchName;
        return this;
    }

    public int getSearchStatus() {
        return searchStatus;
    }

    public Search setSearchStatus(int searchStatus) {
        this.searchStatus = searchStatus;
        return this;
    }

    public int getSearchBalance() {
        return searchBalance;
    }

    public Search setSearchBalance(int searchBalance) {
        this.searchBalance = searchBalance;
        return this;
    }

    public String getSearchOrderDate() {
        return searchOrderDate;
    }

    public Search setSearchOrderDate(String searchOrderDate) {
        this.searchOrderDate = searchOrderDate;
        return this;
    }

    public String getSearchStartDate() {
        return searchStartDate;
    }

    public Search setSearchStartDate(String searchStartDate) {
        this.searchStartDate = searchStartDate;
        return this;
    }

    public String getSearchEndDate() {
        return searchEndDate;
    }

    public Search setSearchEndDate(String searchEndDate) {
        this.searchEndDate = searchEndDate;
        return this;
    }

    public String getDateLastLogined() {
        return dateLastLogined;
    }

    public Search setDateLastLogined(String dateLastLogined) {
        this.dateLastLogined = dateLastLogined;
        return this;
    }

}

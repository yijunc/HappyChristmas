package bean;

import java.util.Date;

/**
 * Created by zhaoning on 2017/12/9.
 */
public class UserSearch {
    private int searchId;
    private String searchName;
    private int searchStatus;
    private int searchBalance;
    private long searchCell;
//    private Date searchOrderDate;
//    private Date searchStartDate;
//    private Date searchEndDate;
    private String searchOrderDate;
    private String searchStartDate;
    private String searchEndDate;
    private String dateLastLogined;

    public long getSearchCell() {
        return searchCell;
    }

    public UserSearch setSearchCell(long searchCell) {
        this.searchCell = searchCell;
        return this;
    }

    public UserSearch() {
    }

    public int getSearchId() {
        return searchId;
    }

    public UserSearch setSearchId(int searchId) {
        this.searchId = searchId;
        return this;
    }

    public String getSearchName() {
        return searchName;
    }

    public UserSearch setSearchName(String searchName) {
        this.searchName = searchName;
        return this;
    }

    public int getSearchStatus() {
        return searchStatus;
    }

    public UserSearch setSearchStatus(int searchStatus) {
        this.searchStatus = searchStatus;
        return this;
    }

    public int getSearchBalance() {
        return searchBalance;
    }

    public UserSearch setSearchBalance(int searchBalance) {
        this.searchBalance = searchBalance;
        return this;
    }

    public String getSearchOrderDate() {
        return searchOrderDate;
    }

    public UserSearch setSearchOrderDate(String searchOrderDate) {
        this.searchOrderDate = searchOrderDate;
        return this;
    }

    public String getSearchStartDate() {
        return searchStartDate;
    }

    public UserSearch setSearchStartDate(String searchStartDate) {
        this.searchStartDate = searchStartDate;
        return this;
    }

    public String getSearchEndDate() {
        return searchEndDate;
    }

    public UserSearch setSearchEndDate(String searchEndDate) {
        this.searchEndDate = searchEndDate;
        return this;
    }

    public String getDateLastLogined() {
        return dateLastLogined;
    }

    public UserSearch setDateLastLogined(String dateLastLogined) {
        this.dateLastLogined = dateLastLogined;
        return this;
    }

}

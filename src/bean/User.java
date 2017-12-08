package bean;

import controller.UserController;

import java.util.Date;

public class User {
    private int userId;
    private String userName;
    private String userPsw;
    private String userCell;
    private int userValid;
    private String userEmail;
    private boolean userAdmin;
    private boolean userAvatar;
    private int userBalance;
    private Date userLastSeen;
    private Date userRegisterDate;
    private Date userLastOrderDate;

    public User() {
    }

    public User(int userId, String userName, String userPsw, String userCell, int userValid, String userEmail, boolean userAdmin, boolean userAvatar, int userBalance, Date userLastSeen, Date userRegisterDate, Date userLastOrderDate) {
        this.userId = userId;
        this.userName = userName;
        this.userPsw = userPsw;
        this.userCell = userCell;
        this.userValid = userValid;
        this.userEmail = userEmail;
        this.userAdmin = userAdmin;
        this.userAvatar = userAvatar;
        this.userBalance = userBalance;
        this.userLastSeen = userLastSeen;
        this.userRegisterDate = userRegisterDate;
        this.userLastOrderDate = userLastOrderDate;
    }

    public int getUserId() {
        return userId;
    }

    public User setUserId(int userId) {
        this.userId = userId;
        return this;
    }

    public String getUserName() {
        return userName;
    }

    public User setUserName(String userName) {
        this.userName = userName;
        return this;
    }

    public String getUserPsw() {
        return userPsw;
    }

    public User setUserPsw(String userPsw) {
        this.userPsw = userPsw;
        return this;
    }

    public String getUserCell() {
        return userCell;
    }

    public User setUserCell(String userCell) {
        this.userCell = userCell;
        return this;
    }

    public int getUserValid() {
        return userValid;
    }

    public User setUserValid(int userValid) {
        this.userValid = userValid;
        return this;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public User setUserEmail(String userEmail) {
        this.userEmail = userEmail;
        return this;
    }

    public boolean isUserAdmin() {
        return userAdmin;
    }

    public User setUserAdmin(boolean userAdmin) {
        this.userAdmin = userAdmin;
        return this;
    }

    public boolean isUserAvatar() {
        return userAvatar;
    }

    public User setUserAvatar(boolean userAvatar) {
        this.userAvatar = userAvatar;
        return this;
    }

    public int getUserBalance() {
        return userBalance;
    }

    public User setUserBalance(int userBalance) {
        this.userBalance = userBalance;
        return this;
    }

    public Date getUserLastSeen() {
        return userLastSeen;
    }

    public User setUserLastSeen(Date userLastSeen) {
        this.userLastSeen = userLastSeen;
        return this;
    }

    public Date getUserRegisterDate() {
        return userRegisterDate;
    }

    public User setUserRegisterDate(Date userRegisterDate) {
        this.userRegisterDate = userRegisterDate;
        return this;
    }

    public Date getUserLastOrderDate() {
        return userLastOrderDate;
    }

    public User setUserLastOrderDate(Date userLastOrderDate) {
        this.userLastOrderDate = userLastOrderDate;
        return this;
    }
}

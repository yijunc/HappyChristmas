package bean;

import java.util.Date;

public class User {
    private int userId;
    private String userName;
    private String userPsw;
    private String userCell;
    private boolean userValid;
    private String userEmail;
    private boolean userAdmin;
    private boolean userAvatar;
    private int userBalance;
    private Date userLastSeen;
    private Date userRegisterDate;

    public User() {
    }

    public User(int userId, String userName, String userPsw, String userCell, boolean userValid, String userEmail, boolean userAdmin, boolean userAvatar, int userBalance, Date userLastSeen, Date userRegisterDate) {
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
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPsw() {
        return userPsw;
    }

    public void setUserPsw(String userPsw) {
        this.userPsw = userPsw;
    }

    public String getUserCell() {
        return userCell;
    }

    public void setUserCell(String userCell) {
        this.userCell = userCell;
    }

    public boolean isUserValid() {
        return userValid;
    }

    public void setUserValid(boolean userValid) {
        this.userValid = userValid;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public boolean isUserAdmin() {
        return userAdmin;
    }

    public void setUserAdmin(boolean userAdmin) {
        this.userAdmin = userAdmin;
    }

    public boolean isUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(boolean userAvatar) {
        this.userAvatar = userAvatar;
    }

    public int getUserBalance() {
        return userBalance;
    }

    public void setUserBalance(int userBalance) {
        this.userBalance = userBalance;
    }

    public Date getUserLastSeen() {
        return userLastSeen;
    }

    public void setUserLastSeen(Date userLastSeen) {
        this.userLastSeen = userLastSeen;
    }

    public Date getUserRegisterDate() {
        return userRegisterDate;
    }

    public void setUserRegisterDate(Date userRegisterDate) {
        this.userRegisterDate = userRegisterDate;
    }
}

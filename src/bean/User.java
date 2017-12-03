package bean;

public class User {
    private int userId;
    private String userName;
    private String userPsw;
    private String userCell;
    private boolean userValid;
    private int userCredit;
    private String userEmail;
    private boolean userAdmin;
    private boolean userAvatar;
    private int userBalance;

    public User() {
    }

    public User(int userId, String userName, String userPsw, String userCell, boolean userValid, int userCredit, String userEmail, boolean userAdmin, boolean userAvatar, int userBalance) {
        this.userId = userId;
        this.userName = userName;
        this.userPsw = userPsw;
        this.userCell = userCell;
        this.userValid = userValid;
        this.userCredit = userCredit;
        this.userEmail = userEmail;
        this.userAdmin = userAdmin;
        this.userAvatar = userAvatar;
        this.userBalance = userBalance;
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

    public int getUserCredit() {
        return userCredit;
    }

    public void setUserCredit(int userCredit) {
        this.userCredit = userCredit;
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
}

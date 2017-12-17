package test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TestMain {
    public static void main(String[] args){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String sql = "UPDATE 2017j2ee.user SET user_last_seen = " + df.format(new Date()) + "WHERE user_id = ";
        System.out.println(sql);
    }
}

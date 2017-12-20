import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Test {

    public static void main(String argsp[]) throws Exception{
        String dateStart = "2017-12-01";
        String dateEnd = "2017-12-25";
        SimpleDateFormat dateFormatTo = new SimpleDateFormat("yyyy-MM-dd");
        Calendar ca = Calendar.getInstance();
        System.out.println(dateFormatTo.parse(dateStart));
        ca.setTime(dateFormatTo.parse(dateStart)); //设置时间为当前时间
        ca.add(Calendar.DATE, -1); //年份减1
        Date prevDateEnd = ca.getTime(); //结果
        System.out.println(dateFormatTo.format(prevDateEnd));

        ca.setTime(dateFormatTo.parse(dateEnd)); //设置时间为当前时间
        ca.add(Calendar.DATE, 1);
        Date postDateStart = ca.getTime();
        System.out.println(dateFormatTo.format(postDateStart));
    }
}

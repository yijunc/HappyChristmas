package model;

import javax.sql.DataSource;
import java.text.SimpleDateFormat;

public class NewsDbUtil extends DbUtil {
    private SimpleDateFormat dateFormatFrom = new SimpleDateFormat("mm/dd/yyyy");
    private SimpleDateFormat dateFormatTo = new SimpleDateFormat("yyyy-mm-dd");
    private SimpleDateFormat dff = new SimpleDateFormat("yyyy-MM-dd");

    public NewsDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public get
}

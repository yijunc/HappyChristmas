package model;

import javax.sql.DataSource;

public class NewsDbUtil extends DbUtil {

    protected NewsDbUtil(DataSource dataSource) {
        super(dataSource);
    }
}

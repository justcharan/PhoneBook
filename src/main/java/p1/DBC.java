package p1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBC {

    public static Connection getcon() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            String password = System.getenv("AIVEN_DB_PASSWORD");

            return DriverManager.getConnection(
                "jdbc:mysql://mysql-17981a8e-phonebook2.h.aivencloud.com:28673/phonebook?sslMode=REQUIRED",
                "avnadmin",
                password
            );

        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
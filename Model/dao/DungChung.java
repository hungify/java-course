package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
    public Connection cn;
    public void ketNoi() throws Exception{
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	String connectionUrl = "jdbc:sqlserver://localhost;database=QLSach;user=sa;password=123";
	cn = DriverManager.getConnection(connectionUrl);
	System.out.println("Connected DB");
    }
}

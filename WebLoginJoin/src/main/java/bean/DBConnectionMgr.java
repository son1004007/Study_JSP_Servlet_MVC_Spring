package bean;

import java.sql.*;

public class DBConnectionMgr {

	public DBConnectionMgr() {
	}

	private static DBConnectionMgr instance = new DBConnectionMgr();

	public static DBConnectionMgr getInstance() {
		return instance;
	}

	public Connection getConnection() throws Exception {

		Connection con = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); // 드라이브로드


			con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE", "scott", "tiger");

			System.out.println("Oracle Connected");

		} catch (Exception e) {
			System.out.println("Error :" + e);
		}

		return con;

	}
}
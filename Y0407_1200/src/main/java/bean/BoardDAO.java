package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
//	public void getCon() {
//		try {
//			Context ctx = new InitialContext();
//			Context env = (Context)ctx.lookup("java:comp/env");
//			DataSource ds = (DataSource)env.lookup("jdbc/pool");
//			
//			con = ds.getConnection();
//			
//
//			   
//
//			  /*//1.해당 데이터 베이스를 사용한다고 선언
//
//			  Class.forName("oracle.jdbc.driver.OracleDriver");
//
//			  //2. 해당 데이터 베이스에 접속
//
//			   con = DriverManager.getConnection(url,id,pass);*/
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//	}
	String id = "scott";
	String pw = "oracle";
	String url = "jdbc:oracle:thin:@localhost:1521/xe";
	String sql;
	public void getCon() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, id, pw);
			pstmt = con.prepareStatement(sql);
			pstmt.executeQuery();
			con.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("로딩 실패");
		}
	}

	
	public void insertBoard(BoardBean bean) {
		getCon();
		
		int ref = 0; 
		int re_step = 1;
		int re_level = 1;
		
		try {
			String rsql = "select max(ref) from board";
//			pstmt = con.prepareStatement(rsql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ref =  rs.getInt(1)+1;
			}
			String sql = "insert into board values(board_seq.NEXTVAL,?,?,?,?,sysdate,?,?,?,0,?)";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, bean.getWriter());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getEmail());
			pstmt.setString(4, bean.getEmail());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, re_step);
			pstmt.setInt(7, re_level);
			pstmt.setString(8, bean.getContent());
			pstmt.executeUpdate();
			con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}

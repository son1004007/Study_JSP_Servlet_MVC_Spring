package bean;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class MemberDAO {

//	NewFile.jsp
//	try{
//		MemberDAO memDao = MemberDAO.getInstance();
//		Connection con = memDao.getConnection();
//		out.print("연동 성공");
//	}catch( Exception EX ){
//		System.out.print(EX);
//	}
	
	
	public MemberDAO() {
		// TODO Auto-generated constructor stub
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception {
		

		  Connection CN = null;
		  Statement ST; 
		  PreparedStatement PST;
		  CallableStatement CST; 
		  ResultSet RS; 
		  java.util.Date Gwdate;
		  
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver"); //드라이브로드
			
		    String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ;
		    
		    CN = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","scott","tiger");
		    
		    System.out.println("[NewFile.jsp] Oracle Connected");
		    
			}catch(Exception ex){
				System.out.println("Error name :" + ex);
				}
			ST = CN.createStatement();
		
	
		return CN;
		
	}
}
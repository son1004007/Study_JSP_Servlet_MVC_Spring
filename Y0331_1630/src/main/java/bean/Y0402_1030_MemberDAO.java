package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Y0402_1030_MemberDAO {
	
	String id ="sys as sysdba";
	String pw ="oracle";
	String url ="jdbc:oracle:thin:@localhost:1521/xe";
	
	Connection con; // 데이터베이스 접근
	PreparedStatement pstmt; // 쿼리 실행 객체
	ResultSet rs; // 데이터베이스 테이블 결과를 리턴받아 자바에 저장해주는 객체
	
	
	String sql;
	public void getCon() {
		try {
//			// 해당 데이터 베이스를 사용한다고 선언
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			// 데이터베이스 접속
//			con = DriverManager.getConnection(url,id,pw);
			
			
			
//			// 쿼리 준비
//			String sql = "insert into Mem values(?,?,?,?,?,?,?,?)";
//			pstmt = con.prepareStatement(sql);
//			pstmt.executeQuery();
//			con.close();
			
//			20210405_1605 Servers > server.xml 수정 후 위 try부터 con 까지 주석 처리 후 아래를 작성
			// 외부에서 데이터를 읽어야함
			Context ctx = new InitialContext();
			Context envctx=(Context)ctx.lookup("java:comp/env");
			// 데치터 소스 객체 선언
			DataSource ds = (DataSource)envctx.lookup("jdbc/pool");
			con = ds.getConnection();
			
		} catch (Exception e){
			e.printStackTrace();
			System.out.println("로딩 실패");
		}
	}


	public void insertMember(Y0401_1430_memberJoin_bean mbean) {
		try{
			getCon();
			String sql = "insert into Mem values(?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getTel());
			pstmt.setString(5, mbean.getHobby());
			pstmt.setString(6, mbean.getJob());
			pstmt.setString(7, mbean.getAge());
			pstmt.setString(8, mbean.getInfo());
			pstmt.executeQuery();
			
			con.close();
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public Vector<Y0401_1430_memberJoin_bean> allSelectMember(){
		
		Vector<Y0401_1430_memberJoin_bean> v = new Vector<>();
		
		try {
			getCon();
			String sql = "select * from mem";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery(sql); // 쿼리 실행 결과를 리턴해서 자바 객체에 저장
			
			while(rs.next()) {
				Y0401_1430_memberJoin_bean mbean = new Y0401_1430_memberJoin_bean();
				mbean.setId(rs.getString(1));
				mbean.setPass1(rs.getString(2));
				mbean.setEmail(rs.getString(3));
				mbean.setTel(rs.getString(4));
				mbean.setHobby(rs.getString(5));
				mbean.setJob(rs.getString(6));
				mbean.setAge(rs.getString(7));
				mbean.setInfo(rs.getString(8));
				
				v.add(mbean);		
			}
			con.close();
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("로딩 실패");
		}
		return v;
		
	}
	
	public Y0401_1430_memberJoin_bean oneMember(String id) {
		Y0401_1430_memberJoin_bean mbean = new Y0401_1430_memberJoin_bean();
		try {
			getCon();
			String sql = "select * from mem where id=?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mbean.setId(rs.getString(1));
				mbean.setPass1(rs.getString(2));
				mbean.setEmail(rs.getString(3));
				mbean.setTel(rs.getString(4));
				mbean.setHobby(rs.getString(5));
				mbean.setJob(rs.getString(6));
				mbean.setAge(rs.getString(7));
				mbean.setInfo(rs.getString(8));
				
			}
			con.close();
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("로딩 실패");
		}
		
		return mbean;
	}
	
}

package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class Y0405_2000_parDAO {

	String id = "sys as sysdba";
	String pw = "oracle";
	String url = "jdbc:oracle:thin:@localhost:1521/xe";

	Connection con; // 데이터베이스 접근
	PreparedStatement pstmt; // 쿼리 실행 객체
	ResultSet rs; // 데이터베이스 테이블 결과를 리턴받아 자바에 저장해주는 객체
	String sql;

	public void getCon() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(id, pw, url);
			pstmt = con.prepareStatement(sql);
			pstmt.executeQuery();
			con.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("로딩 실패");
		}
	}

	public void insertPar(Y0405_2000_par_bean pbean) {
		try {
			getCon();
			String sql = "insert into par values(?,?)";
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, pbean.getId());
			pstmt.setInt(2, pbean.getAge());
			pstmt.executeQuery();

			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Vector<Y0405_2000_par_bean> allSelectMember() {

		Vector<Y0405_2000_par_bean> v = new Vector<>();
		try {
			getCon();
			String sql = "select * from par";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery(sql); // 쿼리 실행 결과를 리턴해서 자바 객체에 저장

			while (rs.next()) {
				Y0405_2000_par_bean pbean = new Y0405_2000_par_bean();
				pbean.setId(rs.getString(1));
				pbean.setAge(rs.getInt(2));

				v.add(pbean);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("로딩 실패");
		}
		return v;

	}
}

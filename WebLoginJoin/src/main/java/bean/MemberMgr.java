package bean;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberMgr {

	
	DBConnectionMgr dbcm = DBConnectionMgr.getInstance();
	
	Connection con; // 데이터베이스 접근
	PreparedStatement pstmt;
	ResultSet rs;
	String sql;
	
//	 데이터베이스에 연결하기 위한 설정
	public void getCon() {
		try {
			con = dbcm.getConnection();
		}catch(Exception e) {
			System.out.println(e);
			e.printStackTrace(); // 어느부분이 잘못되었는지 알려주는 예외처리
		}
	}


	public boolean checkId(String id) {
		boolean checkCon = false;
		try {
			getCon();
			String sql = "select id from tblMember where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			checkCon = rs.next();

			con.close();
		} catch (Exception e) {
			 e.printStackTrace();
		}
		return checkCon;
	}

// 우편번호 검색
	public Vector<ZipcodeBean> zipcodeRead(String area3) { // 도로명 부분
		getCon();
		Vector<ZipcodeBean> vlist = new Vector<ZipcodeBean>();

		try {
			String sql = "select * from tblZipcode where area3 like ?";
			pstmt = con.prepareStatement("select * from tblZipcode where area3 like ?");
			System.out.println(area3);
			pstmt.setString(1, "%" + area3 + "%"); // %
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ZipcodeBean bean = new ZipcodeBean();
				bean.setZipcode(rs.getString(1)); // 뒤에 숫자 주의
				bean.setArea1(rs.getString(2));
				bean.setArea2(rs.getString(3));
				bean.setArea3(rs.getString(4));
				vlist.addElement(bean); // 빠뜨리지 않도록 주의
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vlist;
	}

	// 회원가입 : 배열로 들어오는 값 처리
	public boolean insertMember(MemberBean bean) throws ClassNotFoundException, SQLException, NamingException {
		getCon();
		boolean flag = false;
		try {
			String sql = "insert into tblMember(id,pwd,name,gender,birthday,email,zipcode,address,hobby,job)"
					+ "values(?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			///////////////////////////////////////////////////////////////////////
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPwd());
			pstmt.setString(3, bean.getName());
			pstmt.setString(4, bean.getGender());
			pstmt.setString(5, bean.getBirthday());
			pstmt.setString(6, bean.getEmail());
			pstmt.setString(7, bean.getZipcode());
			pstmt.setString(8, bean.getAddress());
			// {"인터넷", "여행", "영화"} : 순서대로 배열 0,1,2로 들어온다.
			String hobby[] = bean.getHobby();
			char hb[] = { '0', '0', '0', '0', '0' };
			String lists[] = { "인터넷", "여행", "게임", "영화", "운동" };
			// 배열2개 = 2중 for문
			for (int i = 0; i < hobby.length; i++) { // for문 자동완성은 가장 근처의 변수로 만들어준다. 선택된 것(3)
				for (int j = 0; j < lists.length; j++) { // 5번
					if (hobby[i].equals(lists[j])) {
						hb[j] = '1';
						break;
					} // if
				} // for2
			} // for1
			pstmt.setString(9, new String(hb)); // "11010"이라는 문자열로 저장
			////////////////////////////////////////////////////////////////////////
			pstmt.setString(10, bean.getJob());
			///////////////////////////////////////////////////////////////////////
			// int cnt = pstmt.executeUpdate(); // insert: int형으로 execute됨. 입력성공 1 실패 0.
			if (pstmt.executeUpdate() == 1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	// 로그인
	public boolean loginMember(String id, String pwd) {
		getCon();
		boolean flag = false;
		try {
			String sql = " select id from tblMember where id=? and pwd=? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id); // 세팅. 순서중요
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery(); // 실행
			flag = rs.next(); // true면 로그인 성공. 없으면(false) 로그인 실패
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	// 회원정보가져오기
	public MemberBean getMember(String id) {
		getCon();
		// 객체 불변의 법칙 : new로 만들어진 객체는 절대 타입이 변하지 않는다.
		MemberBean bean = new MemberBean(); // bean : reference 변수
		Object obj = bean;
		try {
			String sql = " select * from tblMember where id=? ";
			// select * from 빈칸을 없애면 쿼리는 먹지만 구 자바에서는 인식을 못한다.
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean.setId(rs.getString("id"));
				bean.setPwd(rs.getString("pwd"));
				bean.setName(rs.getString("name"));
				bean.setGender(rs.getString("gender"));
				bean.setBirthday(rs.getString("birthday"));
				bean.setEmail(rs.getString("email"));
				bean.setZipcode(rs.getString("zipcode"));
				bean.setAddress(rs.getString("address"));
				// hobby => 10101 (table) ==> {"1","0","1","0","1"} 문자열배열로 변형해서 저장
				String hobby = rs.getString("hobby");
				String hobbys[] = new String[5];
				// 배열 아래는 for
				for (int i = 0; i < hobbys.length; i++) {
					hobbys[i] = hobby.substring(i, i + 1); // 문자열을 배열로 만들어
				}
				bean.setHobby(hobbys);
				bean.setJob(rs.getString("job"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

	// 회원정보수정 : 입력(회원가입)과 거의 비슷함.
	public boolean updateMember(MemberBean bean) { // db2
		getCon();
		boolean flag = false;
		try {
			String sql = "update tblMember set pwd=?, name=?, gender=?, birthday=?, email=?, zipcode=?, address=?, hobby=?, job=? where id=?";
			pstmt = con.prepareStatement(sql);
			///////////////////////////////////////////////////////////////////////
			pstmt.setString(1, bean.getPwd());
			pstmt.setString(2, bean.getName());
			pstmt.setString(3, bean.getGender());
			pstmt.setString(4, bean.getBirthday());
			pstmt.setString(5, bean.getEmail());
			pstmt.setString(6, bean.getZipcode());
			pstmt.setString(7, bean.getAddress());
			////////////////////////////////////////////////////////////////////////
			// {"인터넷", "여행", "영화"} : 순서대로 배열 0,1,2로 들어온다.
			String hobby[] = bean.getHobby();
			char hb[] = { '0', '0', '0', '0', '0' };
			String lists[] = { "인터넷", "여행", "게임", "영화", "운동" };
			// 배열2개 = 2중 for문
			for (int i = 0; i < hobby.length; i++) { // for문 자동완성은 가장 근처의 변수로 만들어준다. 선택된 것(3)
				for (int j = 0; j < lists.length; j++) { // 5번
					if (hobby[i].equals(lists[j])) {
						hb[j] = '1';
						break;
					} // if
				} // for2
			} // for1
			pstmt.setString(8, new String(hb)); //
			pstmt.setString(9, bean.getJob());
			pstmt.setString(10, bean.getId());
			if (pstmt.executeUpdate() == 1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
}
package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getCon() {
		try {
			Context ctx = new InitialContext();
			Context env = (Context)ctx.lookup("java:comp/env");
			DataSource ds = (DataSource)env.lookup("jdbc/pool");
			
			con = ds.getConnection();
			

			   

			  /*//1.해당 데이터 베이스를 사용한다고 선언

			  Class.forName("oracle.jdbc.driver.OracleDriver");

			  //2. 해당 데이터 베이스에 접속

			   con = DriverManager.getConnection(url,id,pass);*/
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
//	String id = "scott";
//	String pw = "tiger";
//	String url = "jdbc:oracle:thin:@localhost:1521/xe";
//	String sql;
//	public void getCon() {
//
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			con = DriverManager.getConnection(url, id, pw);
//			pstmt = con.prepareStatement(sql);
//			pstmt.executeQuery();
//			con.close();
//
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			System.out.println("로딩 실패");
//		}
//	}

//	DB sql 입력
//	create sequence board_seq
//	increment by 1
//	start with 1
//	minvalue 1
//	maxvalue 1000;
//
//	create table board(
//	num number primary key,
//	writer varchar2(20),
//	email varchar2(50),
//	subject varchar2(50),
//	password varchar2(10),
//	reg_date date,
//	ref number,
//	re_step number,
//	re_level number,
//	readcount number,
//	content varchar2(500));


	
	public void insertBoard(BoardBean bean) {
		getCon();
		
		int ref = 0;  // 글 그룹
		int re_step = 1; // 새 글
		int re_level = 1;
		
		try {
			//가장 큰 ref값을 읽어와라.
			String rsql = "select max(ref) from board";
			pstmt = con.prepareStatement(rsql);
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
			System.out.println("로딩 실패");
			
			e.printStackTrace();
		}
	}
	

    // 모든 게시글을 리턴해주는 메소드 작성
    public Vector<BoardBean> getAllBoard(int start, int end) {
        // 리턴할 객체 선언
        Vector<BoardBean> v = new Vector<>();
 
        getCon();
 
        try {
            // 쿼리 준비 (컬럼에 Rownum Rnum을 추가하고, 괄호()안의 결과를 A에 넣는다.)
            String sql = "select * from (select A.*, Rownum Rnum from (select * from board order by ref desc, re_step asc)A)"
                    + "where Rnum >= ? and Rnum <= ?";
            // 쿼리를 실행할 객체 선언
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, start);
            pstmt.setInt(2, end);
            // 쿼리 실행후 결과 저장
            rs = pstmt.executeQuery();
            // 데이터 개수가 몇개인지 모르기에 반복문을 이용하여 데이터를 추출
            while (rs.next()) {
                // 데이터를 패키징 시키기(가방 = Boardbean 클래스를 이용) 패키지 안에 넣는다는 의미
                BoardBean bean = new BoardBean();
                bean.setNum(rs.getInt(1));
                bean.setWriter(rs.getString(2));
                bean.setEmail(rs.getString(3));
                bean.setSubject(rs.getString(4));
                bean.setPassword(rs.getString(5));
                bean.setRe_date(rs.getDate(6).toString()); // reg데이터가 String타입으로 변한다.
                bean.setRef(rs.getInt(7));
                bean.setRe_step(rs.getInt(8));
                bean.setRe_level(rs.getInt(9));
 
                bean.setReadcount(rs.getInt(10));
                bean.setContent(rs.getString(11));
                // 패키징한 데이터를 벡터에 저장
                v.add(bean);
            }
 
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
 
        return v;
    }
	// BoardInfo를 사용할 때 하나의 게시글을 리턴하는 메소드
	    public BoardBean oneBoard(int num) {
	       
	       BoardBean bean=new BoardBean();
	       getCon();
	       
	       try {
	          
	          //조회수 증가
	          String readsql="update board set readcount=readcount+1 where num=?";
	          pstmt=con.prepareStatement(readsql);
	          pstmt.setInt(1, num);
	          pstmt.executeUpdate();
	          
	          
	          String sql="select *from board where num=?";
	          
	          pstmt=con.prepareStatement(sql);
	          pstmt.setInt(1, num);
	          
	          rs=pstmt.executeQuery();
	          
	          if(rs.next()) {
	            bean.setNum(rs.getInt(1));
	            bean.setWriter(rs.getString(2));
	            bean.setEmail(rs.getString(3));
	            bean.setSubject(rs.getString(4));
	            bean.setPassword(rs.getString(5));
	            bean.setRe_date(rs.getDate(6).toString());
	            bean.setRef(rs.getInt(7));
	            bean.setRe_step(rs.getInt(8));
	            bean.setRe_level(rs.getInt(9));
	            bean.setReadcount(rs.getInt(10));
	            bean.setContent(rs.getString(11));
	            
	          }
	          con.close();
	         }catch(Exception e) {
	            e.printStackTrace();
	         }
	       
	       return bean;
	              
	       }

	    //답변글이 저장되는 메소드
	    public void reWriteBoard(BoardBean bean)
	    {//re_step와 re_level을 먼저 수정해야 한다.
	        //답변글은 부모글의 step와 level보다 1씩 증가하기 때문이다.
	        //부모글그룹과 글레벨 글스텝을 읽어들인다.
	        int ref = bean.getRef();
	        int re_step = bean.getRe_step();
	        int re_level = bean.getRe_level();
	        
	        getCon();
	        
	        try {
	        /////////////////////핵심코드///////////////////////////
	            //부모글보다 큰 re_level의 값을 전부 1씩 증가시켜줌(같은 레벨에 있는 것들만)
	            String levelsql = "update board set re_level=re_level+1 where ref=? and re_level > ?";
	                                //코드해석 = board 테이블에 있는 re_level을 1씩 증가시켜라 (단, ref가 같고 re_level보다 작은것만)
	            pstmt = con.prepareStatement(levelsql);
	            //쿼리 실행 객체 선언
	            pstmt.setInt(1, ref);
	            pstmt.setInt(2, re_level);
	            //쿼리 실행
	            pstmt.executeUpdate();
	            //답변글 데이터를 저장
	            String sql = "insert into board values(board_seq.NEXTVAL,?,?,?,?,sysdate,?,?,?,0,?)";
	            // 첫번째 값은 ?가 아니라 시퀀스를 사용해
	            // 시퀀스에 이미 들어가있는값의
	            // 다음값을 자동으로 매핑해서
	            // 넣어준다.
	            
	            pstmt = con.prepareStatement(sql);
	            //?에 값을 매핑한다
	            pstmt.setString(1, bean.getWriter());
	            pstmt.setString(2, bean.getEmail());
	            pstmt.setString(3, bean.getSubject());
	            pstmt.setString(4, bean.getPassword());
	            pstmt.setInt(5, ref); //부모의 ref값을 넣어줌
	            pstmt.setInt(6, re_step+1); //답글이기 때문에 부모글 re_step에 1을 더해준다.
	            pstmt.setInt(7, re_level+1); //답글이기 때문에 부모글 re_level에 1을 더해준다.
	            pstmt.setString(8, bean.getContent());
	            pstmt.executeUpdate(); //
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        
	    }
	 // boardupdate용 Delete시 하나의 게시글을 리턴
	    
	    public BoardBean getOneUpdateBoard(int num) {
	        // 리턴타입 선언(객체 생성)
	        BoardBean bean = new BoardBean();
	        getCon();
	        try {
	 
	            // 쿼리 준비
	            String sql = "select * from board where num=?";
	            // 쿼리 실행 객체
	            pstmt = con.prepareStatement(sql);
	            pstmt.setInt(1, num);
	            // 쿼리 실행후 결과를 리턴
	            rs = pstmt.executeQuery();
	 
	            if (rs.next()) { // 게시글에대한 모든 정보를 하나씩 가져옴
	                bean.setNum(rs.getInt(1));
	                bean.setWriter(rs.getString(2));
	                bean.setEmail(rs.getString(3));
	                bean.setSubject(rs.getString(4));
	                bean.setPassword(rs.getString(5));
	                bean.setRe_date(rs.getDate(6).toString()); // reg데이터가 String타입으로 변한다.
	                bean.setRef(rs.getInt(7));
	                bean.setRe_step(rs.getInt(8));
	                bean.setRe_level(rs.getInt(9));
	                bean.setReadcount(rs.getInt(10));
	                bean.setContent(rs.getString(11));
	 
	            }
	 
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	 
	        return bean;
	    }
	 
	    // update 와 delete 시 필요한 패스워드값을 리턴해주는 메소드
	    public String getPass(int num) {// 리턴할 변수 객체 선언
	        String pass = "";
	        // DB연결
	        getCon();
	 
	        try {
	 
	            // 쿼리 준비
	            String sql = "select password from board where num=?";
	            // 쿼리 실행할 객체 선언
	            pstmt = con.prepareStatement(sql);
	            pstmt.setInt(1, num);
	            rs = pstmt.executeQuery();
	            // 패스워드 값을 저장
	            if (rs.next()) {
	                pass = rs.getString(1);
	            }
	            // 자원 반납
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	 
	        return pass;
	 
	    }
	 
	    // 하나의 게시글을 수정하는 메소드
	    public void updateBoard(BoardBean bean) {
	        getCon();
	 
	        try {
	            // 쿼리 준비
	            String sql = "update board set subject=? , content=? where num=?";
	            pstmt = con.prepareStatement(sql);
	 
	            // ?값을 대입
	            pstmt.setString(1, bean.getSubject());
	            pstmt.setString(2, bean.getContent());
	            pstmt.setInt(3, bean.getNum());
	 
	            pstmt.executeUpdate();
	 
	            con.close();// 자원반납
	 
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	 
	    }
	    
	 // 전체 글의 갯수를 리턴하는 메소드
	    public int getAllCount() {
	        getCon();
	        // 게시글 전체수를 저장하는 변수
	        int count = 0;
	 
	        try {
	            // 쿼리 준비
	            String sql = "select count(*) from board";
	            // 쿼리를 실행할 객체 선언
	            pstmt = con.prepareStatement(sql);
	 
	            // 쿼리 실행후 결과를 리턴
	            rs = pstmt.executeQuery();
	 
	            if (rs.next()) {
	                count = rs.getInt(1); // 전체 게시글의 수
	            }
	 
	            con.close();
	 
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	 
	        return count;
	 
	    }
}

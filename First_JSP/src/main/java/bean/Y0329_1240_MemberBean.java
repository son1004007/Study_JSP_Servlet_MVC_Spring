package bean;

public class Y0329_1240_MemberBean {

	// 아이디, 비밀번호, 주소, 전화를 담을 프로퍼티(맴버변수)
    // 프로퍼티에 직접 접근할 수 없게 private를 사용한다.
	 private String id;

	 private String pass;

	 private String email;

	 private String tel;

	 private String addr;
    
    /* 데이터를 가져오거나(get), 세팅하는(set)
    *  기능을 하는 메서드를 만든다.
    *  - 데이터를 가져오는 경우 - get메서드
    *  - 데이터를 세팅하는 경우 - set메서드
    */
		public String getId() {

		  return id;

		 }

		 public void setId(String id) {

		  this.id = id;

		 }

		 public String getPass() {

		  return pass;

		 }

		 public void setPass(String pass) {

		  this.pass = pass;

		 }

		 public String getEmail() {

		  return email;

		 }

		 public void setEmail(String email) {

		  this.email = email;

		 }

		 public String getTel() {

		  return tel;

		 }

		 public void setTel(String tel) {

		  this.tel = tel;

		 }

		 public String getAddr() {

		  return addr;

		 }

		 public void setAddr(String addr) {

		  this.addr = addr;

		 }


//출처: https://all-record.tistory.com/105 [세상의 모든 기록]
}

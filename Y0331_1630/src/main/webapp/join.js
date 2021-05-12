/**
 * 
 */
function check() {
	var blank_pattern = /[\s]/g;
	
	if (mn.id.value.length < 4)  {
		alert("아이디는 4자 이상 입력해주세요.");
		return false;
	}	else if (blank_pattern.test(mn.id.value) == true) {
		alert("아이디에 공백은 사용할 수 없습니다.");
		return false;
	}	else if (blank_pattern.test(mn.pw.value) == true) {
		alert("비밀번호에 공백은 사용할 수 없습니다.");
		return false;
	}	else if (blank_pattern.test(mn.name.value) == true) {
		alert("이름에 공백은 사용할 수 없습니다.");
		return false;
	}	else if (blank_pattern.test(mn.sosicalNumber1.value) == true) {
		alert("주민번호 앞부분에 공백은 사용할 수 없습니다.");
		return false;
	}	else if (blank_pattern.test(mn.sosicalNumber2.value) == true) {
		alert("주민번호 뒷부분에 공백은 사용할 수 없습니다.");
		return false;
	}	else if (mn.id.value == "") {
		alert("아이디 입력");
		return false;
	}	else if (mn.pw.value == "") {
		alert("비밀번호 입력");
		return false;
	}	else if (mn.pwConfirm.value == "") {
		alert("비밀번호 입력");
		return false;
	}	else if (mn.pw.value != mn.pwConfirm.value) {
		alert("비번 확인 불일치");
		return false;
	}	else if (mn.name.value == "") {
		alert("이름 입력");
		return false;
	}	else if (mn.sosicalNumber1.value == "") {
		alert("주민1 입력");
		return false;
	}	else if (mn.sosicalNumber2.value == "") {
		alert("주민2 입력");
		return false;
	}	else {
	return true;
	}
}
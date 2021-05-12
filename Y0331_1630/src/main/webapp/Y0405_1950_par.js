/**
 * 
 */
function check() {
	if (p.id.value == "") {

		alert("아이디를 입력 하세요");

		p.id.focus();

		return false;

	}

	else if (p.age.value == "") {

		alert("나이를 입력 하세요");

		p.age.focus();

		return false;

	}

	else if (isNaN(p.age.value)) {

		alert("나이는 숫자로 입력");

		p.age.focus();

		return false;

	}

	else {

		return true;

	}
}
/**
 * 
 */
function check() {

	if (fr.id.value == "") {

		alert("아이디 입력");

		fr.id.focus();

		return false;

	}

	else if (fr.age.value == "") {

		alert("나이 입력");

		fr.age.focus();

		return false;

	}

	else if (isNaN(fr.age.value)) {

		alert("숫자로 입력");

		fr.age.focus();

		return false;

	}

	else {

		return true;

	}

}
package co.sp.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;

import co.sp.beans.Data;
import validate.Validator1;

@Controller
public class ControlTest {

	@GetMapping("/input")
	public String in(Data data1) {
		return "input";
	}
	@PostMapping("/out")
	public String out(@Valid Data data1, BindingResult re) {
		
		if(re.hasErrors()) {
			return "input";
		}
		return "success";
		
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
//		validate등록작업
		Validator1 v1 = new Validator1();
		binder.addValidators(v1); // 여러개 주입 가능
	}
}

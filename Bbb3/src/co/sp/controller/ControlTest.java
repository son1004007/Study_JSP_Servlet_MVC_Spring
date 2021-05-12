package co.sp.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import co.sp.beans.Data;

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
}

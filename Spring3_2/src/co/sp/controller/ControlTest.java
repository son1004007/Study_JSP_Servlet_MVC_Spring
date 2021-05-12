package co.sp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import co.sp.beans.Data;

@Controller
public class ControlTest {
	
	@GetMapping("/java1")
	public String ja1(Data d) {
		
		d.setDa1("a");
		d.setDa2("b");
		d.setDa3("c");
		d.setDa4("d");
		
		return "java1";
		//값 세팅해서 자바1로 넘김
		//자바1에서 modelattribute로 값 받아
		//path주면서 세팅 
		
		//da1 ->input
		//da2 ->password
		//da3 ->textarea
		//da4 ->hidden
		
		//비활성화버튼 submit
		
		
	}
	

}

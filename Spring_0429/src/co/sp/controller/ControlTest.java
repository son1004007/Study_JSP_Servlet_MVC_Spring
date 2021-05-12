package co.sp.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import co.sp.beans.Data;
import co.sp.beans.Data2;

@Controller
public class ControlTest {

	@GetMapping("/java")
	public String java(@RequestParam Map<String,String> m,
			           @RequestParam List<String> da3){
		
		System.out.println(m.get("da1"));
		System.out.println(m.get("da2"));
		
		for(String str:da3) {
			System.out.println(str);
		}		
		return "result";		
	}
	@GetMapping("/java2")
	public String java2(Data d1,
			            Data2 d2) {
		
		System.out.println(d1.getDa1());
		System.out.println(d1.getDa2());
		
		for(int num:d1.getDa3()) {
			System.out.println(num);
		}
		System.out.println(d2.getDa1());
		System.out.println(d2.getDa2());
		return "result";
	}
	
	
}












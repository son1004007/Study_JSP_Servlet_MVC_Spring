package co.sp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class TestController {
	@GetMapping("/test1")
	public String test1(Model model) {

		model.addAttribute("data2", "문자열 2");

		return "forward:/result";
	}


//	@GetMapping("/result")
//	public String result1(Model model) {
//
//		String data2 = (String) model.getAttribute("data2");
//		System.out.println(data2);
//
//		return "result";
//	}
//	 null 찍힘
//	이유 : Model ModelView는 전송 데이터를 request 객체에 저장하게 된다. 
//	따라서 foward를 하더라도 받는 쪽에서 Model이나 ModelView로 받으면 값을 받을 수 없다.
	
	@GetMapping("/result")
	public String result1(HttpServletRequest request) {
		
		String data2 =(String)request.getAttribute("data2");
		System.out.println(data2);
		
		return "result";
	}
	
	@GetMapping("/test2")
	public String test2(@ModelAttribute("bean1") Databean1 bean) {
		bean.setData1("문자열2");
		bean.setData2("문자열3");
		
		return "forward:/result2";
	}
	@GetMapping("/result2")
	public String result2(HttpServletRequest request) {
		
		Databean1 bean = (Databean1)request.getAttribute("bean1"); 
		System.out.println(bean.getData1());
		System.out.println(bean.getData2());
		return "result";
	}
	
}

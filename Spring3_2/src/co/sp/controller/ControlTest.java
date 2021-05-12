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
		//�� �����ؼ� �ڹ�1�� �ѱ�
		//�ڹ�1���� modelattribute�� �� �޾�
		//path�ָ鼭 ���� 
		
		//da1 ->input
		//da2 ->password
		//da3 ->textarea
		//da4 ->hidden
		
		//��Ȱ��ȭ��ư submit
		
		
	}
	

}

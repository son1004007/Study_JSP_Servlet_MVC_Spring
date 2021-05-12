package co.sp.beans;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

public class Data {

	@Size(min=5, max=20)
	@Pattern(regexp = "[a-z]*")
	private String da1;
	
	@Size(min=8, max=16)
	@Pattern(regexp = "[a-zA-Z]*")
	private String da2;
	
	@Positive
	@Max(80)
	@Min(20)
	private String da3; 
	
	@Email
	private String da4;
	
	@AssertTrue
	private boolean da5;
	

	public String getDa1() {
		return da1;
	}
	
	public void setDa1(String da1) {
		this.da1=da1;
	}

	public String getDa2() {
		return da2;
	}
	
	public void setDa2(String da2) {
		this.da2=da2;
	}

	public String getDa3() {
		return da3;
	}
	
	public void setDa3(String da3) {
		this.da3=da3;
	}

	public String getDa4() {
		return da4;
	}
	
	public void setDa4(String da4) {
		this.da4=da4;
	}
	
	public boolean isDa5() {
		return da5;
	}
	public void setDa5(boolean da5) {
		this.da5=da5;
	}

//	public Data() {
//		this.da1="";
//		this.da2="";
//		this.da3="";
//		this.da4="";
//	}
	
}

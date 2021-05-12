package co.sp.beans;

import javax.validation.constraints.Size;

public class Data {

	@Size(min=2, max=10)
	private String da1;
	private String da2;
	private String da3;
	
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
		this.da2 = da2;
	}

	public String getDa3() {
		return da3;
	}

	public void setDa3(String da3) {
		this.da3 = da3;
	}
	
	
	
}

package com.spring.beans;


public class Test {

//	문제1번
	public Test() {
		System.out.println("생성자");
	}
	
	// 2번 문제 시작
	private Data data1;
	private Data data2;
	private int data3;
	private String data4;
	
	public Data getData1() {
		return data1;
	}
	public void setData1(Data data1) {
		this.data1 = data1;
	}
	public Data getData2() {
		return data2;
	}
	public void setData2(Data data2) {
		this.data2 = data2;
	}
	public int getData3() {
		return data3;
	}
	public void setData3(int data3) {
		this.data3 = data3;
	}
	public String getData4() {
		return data4;
	}
	public void setData4(String data4) {
		this.data4 = data4;
	}
	

}

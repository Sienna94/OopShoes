package com.order.dto;

public class OrderdetailDTO {
	private int odid;
	private String mid;
	private String pname;
	private int odsize;
	private int odqty;
	
	public OrderdetailDTO() {
		super();
	}
	public OrderdetailDTO(int odid, String mid, String pname, int odsize, int odqty) {
		super();
		this.odid = odid;
		this.mid = mid;
		this.pname = pname;
		this.odsize = odsize;
		this.odqty = odqty;
	}
	public int getOdid() {
		return odid;
	}
	public void setOdid(int odid) {
		this.odid = odid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getOdsize() {
		return odsize;
	}
	public void setOdsize(int odsize) {
		this.odsize = odsize;
	}
	public int getOdqty() {
		return odqty;
	}
	public void setOdqty(int odqty) {
		this.odqty = odqty;
	}
}

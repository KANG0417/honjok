package com.honjok.app.vo;

public class CommInfoVO {
	String com_seq, sum_star, adr, menu;

	public String getCom_seq() {
		return com_seq;
	}

	public void setCom_seq(String com_seq) {
		this.com_seq = com_seq;
	}

	public String getSum_star() {
		return sum_star;
	}

	public void setSum_star(String sum_star) {
		this.sum_star = sum_star;
	}

	public String getAdr() {
		return adr;
	}

	public void setAdr(String adr) {
		this.adr = adr;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	@Override
	public String toString() {
		return "CommInfoVO [com_seq=" + com_seq + ", sum_star=" + sum_star + ", adr=" + adr + ", menu=" + menu + "]";
	}

}

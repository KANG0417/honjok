package com.honjok.app.vo;

public class CommInfoVO {
	String 
	info_seq,
	file_image,
	sum_star,
	adr;


	public String getInfo_seq() {
		return info_seq;
	}




	public void setInfo_seq(String info_seq) {
		this.info_seq = info_seq;
	}




	public String getFile_image() {
		return file_image;
	}




	public void setFile_image(String file_image) {
		this.file_image = file_image;
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




	@Override
	public String toString() {
		return "CommInfoVO [info_seq=" + info_seq + ", file_image=" + file_image + ", sum_star="
				+ sum_star + ", adr=" + adr + "]";
	}
	

	

}

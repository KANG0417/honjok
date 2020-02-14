package com.honjok.app.vo;

public class CookVO {
	private String type,
	com_seq,
	image,
	p_num,
	cooktime;


	public String getType() {
		return type;
	}




	public void setType(String type) {
		this.type = type;
	}




	public String getCom_seq() {
		return com_seq;
	}




	public void setCom_seq(String com_seq) {
		this.com_seq = com_seq;
	}




	public String getImage() {
		return image;
	}




	public void setImage(String image) {
		this.image = image;
	}




	public String getP_num() {
		return p_num;
	}




	public void setP_num(String p_num) {
		this.p_num = p_num;
	}




	public String getCooktime() {
		return cooktime;
	}




	public void setCooktime(String cooktime) {
		this.cooktime = cooktime;
	}




	@Override
	public String toString() {
		return "CookVO [type=" + type + ", com_seq=" + com_seq + ", image=" + image + ", p_num=" + p_num + ", cooktime="
				+ cooktime + "]";
	}
	
	
	
	

}

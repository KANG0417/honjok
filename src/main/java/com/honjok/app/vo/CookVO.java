package com.honjok.app.vo;

public class CookVO {
	private String type, com_seq, image, p_num, time;
	

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCome_seq() {
		return com_seq;
	}

	public void setCome_seq(String come_seq) {
		this.com_seq = come_seq;
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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "CookVO [type=" + type + ", com_seq=" + com_seq + ", image=" + image + ", p_num=" + p_num + ", time="
				+ time + "]";
	}
	
	
}

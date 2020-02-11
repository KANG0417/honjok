package com.honjok.app.vo;

public class CookVO {
	private String type, com_seq, image, p_num, time;
//	private String difficulty; 조리 난이도 추가 
	private CommunityVO comm;

	public CommunityVO getComm() {
		return comm;
	}

	public CookVO(String type, String com_seq, String image, String p_num, String time, CommunityVO comm) {
		super();
		this.type = type;
		this.com_seq = com_seq;
		this.image = image;
		this.p_num = p_num;
		this.time = time;
		this.comm = comm;
	}

	public CookVO() {
		
	}

	public void setComm(CommunityVO comm) {
		this.comm = comm;
	}

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

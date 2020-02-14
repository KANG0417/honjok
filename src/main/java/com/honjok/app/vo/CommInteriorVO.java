package com.honjok.app.vo;

public class CommInteriorVO {
	private String type, file_image;
	private int com_seq, p_num;
	private CommunityVO comm;
	
	public CommInteriorVO() {
	}

	public CommInteriorVO(String type, String file_image, int com_seq, int p_num) {
		super();
		this.type = type;
		this.file_image = file_image;
		this.com_seq = com_seq;
		this.p_num = p_num;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFile_image() {
		return file_image;
	}

	public void setFile_image(String file_image) {
		this.file_image = file_image;
	}

	public int getCom_seq() {
		return com_seq;
	}

	public void setCom_seq(int com_seq) {
		this.com_seq = com_seq;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public CommunityVO getComm() {
		return comm;
	}

	public void setComm(CommunityVO comm) {
		this.comm = comm;
	}

	@Override
	public String toString() {
		return "CommInteriorVO [type=" + type + ", file_image=" + file_image + ", com_seq=" + com_seq + ", p_num="
				+ p_num + "]";
	}
}

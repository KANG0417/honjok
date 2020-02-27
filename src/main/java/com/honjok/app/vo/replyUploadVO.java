package com.honjok.app.vo;

public class replyUploadVO {
String com_seq,
parent_number,
up_img_name,
idx;




public String getCom_seq() {
	return com_seq;
}

public void setCom_seq(String com_seq) {
	this.com_seq = com_seq;
}

public String getParent_number() {
	return parent_number;
}

public void setParent_number(String parent_number) {
	this.parent_number = parent_number;
}

public String getUp_img_name() {
	return up_img_name;
}

public void setUp_img_name(String up_img_name) {
	this.up_img_name = up_img_name;
}

public String getIdx() {
	return idx;
}

public void setIdx(String idx) {
	this.idx = idx;
}


@Override
public String toString() {
	return "replyUpload [com_seq=" + com_seq + ", parent_number=" + parent_number + ", up_img_name=" + up_img_name
			+ ", idx=" + idx + "]";
}



}

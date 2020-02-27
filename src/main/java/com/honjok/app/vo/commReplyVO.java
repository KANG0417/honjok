package com.honjok.app.vo;

import java.util.List;

public class commReplyVO {

private String id,lev,step,content,regdate,nick_name,com_seq,idx;
private List<replyUploadVO> replyuploadvo;

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getLev() {
	return lev;
}

public void setLev(String lev) {
	this.lev = lev;
}

public String getStep() {
	return step;
}

public void setStep(String step) {
	this.step = step;
}

public String getContent() {
	return content;
}

public void setContent(String content) {
	this.content = content;
}

public String getRegdate() {
	return regdate;
}

public void setRegdate(String regdate) {
	this.regdate = regdate;
}

public String getNick_name() {
	return nick_name;
}

public void setNick_name(String nick_name) {
	this.nick_name = nick_name;
}

public String getCom_seq() {
	return com_seq;
}

public void setCom_seq(String com_seq) {
	this.com_seq = com_seq;
	
}

public String getIdx() {
	return idx;
}

public void setIdx(String idx) {
	this.idx = idx;
}


public List<replyUploadVO> getReplyuploadvo() {
	return replyuploadvo;
}

public void setReplyuploadvo(List<replyUploadVO> replyuploadvo) {
	this.replyuploadvo = replyuploadvo;
}

@Override
public String toString() {
	return "commReplyVO [id=" + id + ", lev=" + lev + ", step=" + step + ", content=" + content + ", regdate=" + regdate
			+ ", nick_name=" + nick_name + ", com_seq=" + com_seq + ", idx=" + idx + ", replyuploadvo=" + replyuploadvo
			+ "]";
}








	
	
}

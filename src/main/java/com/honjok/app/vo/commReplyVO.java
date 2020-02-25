package com.honjok.app.vo;

public class commReplyVO {

String id,lev,step,content,regdate,nick_name;

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

@Override
public String toString() {
	return "commReplyVO [id=" + id + ", lev=" + lev + ", step=" + step + ", content=" + content + ", regdate=" + regdate
			+ ", nick_name=" + nick_name + "]";
}
	




	
	
}

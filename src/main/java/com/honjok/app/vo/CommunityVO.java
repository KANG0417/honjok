package com.honjok.app.vo;

import java.sql.Date;

public class CommunityVO {
	private String title, id, content, type,com_seq, hit, likes_no, regdate, nick_name;
	
	public String getNickname() {
		return nick_name;
	}

	public void setNickname(String nic_kname) {
		this.nick_name = nic_kname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

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

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getLikes_no() {
		return likes_no;
	}

	public void setLikes(String likes_no) {
		this.likes_no = likes_no;
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
		return "CommunityVO [title=" + title + ", id=" + id + ", content=" + content + ", type=" + type + ", com_seq="
				+ com_seq + ", hit=" + hit + ", likes_no=" + likes_no + ", regdate=" + regdate + ", nick_name=" + nick_name
				+ "]";
	}
}

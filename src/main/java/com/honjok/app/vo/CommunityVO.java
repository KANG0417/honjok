package com.honjok.app.vo;

import java.sql.Date;

public class CommunityVO {
	private String title, id, content, type,comSeq, hit, likesNo, regdate, nickName;

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

	public String getComSeq() {
		return comSeq;
	}

	public void setComSeq(String comSeq) {
		this.comSeq = comSeq;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getLikesNo() {
		return likesNo;
	}

	public void setLikesNo(String likesNo) {
		this.likesNo = likesNo;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	
	@Override
	public String toString() {
		return "CommunityVO [title=" + title + ", id=" + id + ", content=" + content + ", type=" + type + ", comSeq="
				+ comSeq + ", hit=" + hit + ", likesNo=" + likesNo + ", regdate=" + regdate + ", nickName=" + nickName
				+ "]";
	}
	
	
	
	
}

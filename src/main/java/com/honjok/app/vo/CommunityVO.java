package com.honjok.app.vo;

import java.sql.Date;

public class CommunityVO {
	private String title, id, content, type;
	private int com_seq, hit, likes;
	private Date regdate;
	
	public CommunityVO() {}

	public CommunityVO(String title, String id, String content, String type, int com_seq, int hit, int likes,
			Date regdate) {
		super();
		this.title = title;
		this.id = id;
		this.content = content;
		this.type = type;
		this.com_seq = com_seq;
		this.hit = hit;
		this.likes = likes;
		this.regdate = regdate;
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

	public int getCom_seq() {
		return com_seq;
	}

	public void setCom_seq(int com_seq) {
		this.com_seq = com_seq;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "CommunityVO [title=" + title + ", id=" + id + ", content=" + content + ", type=" + type + ", com_seq="
				+ com_seq + ", hit=" + hit + ", likes=" + likes + ", regdate=" + regdate + "]";
	}
}

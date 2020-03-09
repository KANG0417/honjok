package com.honjok.app.vo;

public class LikesVO {
	private String id;
	private int comSeq, likes;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getComSeq() {
		return comSeq;
	}
	public void setComSeq(int comSeq) {
		this.comSeq = comSeq;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	
	@Override
	public String toString() {
		return "LikesVO [id=" + id + ", comSeq=" + comSeq + ", likes=" + likes + "]";
	}
}

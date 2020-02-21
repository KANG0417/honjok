package com.honjok.app.vo;

public class CookVO {
	private String 
	com_seq,
	title,
	content,
	regdate,
	category,
	image,
	cooktime,
	likes,
	hit,
	id,
	nick_name
	;

	public CookVO() {}
	
	public String getCom_seq() {
		return com_seq;
	}

	public void setCom_seq(String com_seq) {
		this.com_seq = com_seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCooktime() {
		return cooktime;
	}

	public void setCooktime(String cooktime) {
		this.cooktime = cooktime;
	}

	public String getLikes() {
		return likes;
	}

	public void setLikes(String likes) {
		this.likes = likes;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nick_name;
	}

	public void setNickname(String nickname) {
		this.nick_name = nickname;
	}

	@Override
	public String toString() {
		return "CookVO [com_seq=" + com_seq + ", title=" + title + ", content=" + content + ", regdate=" + regdate
				+ ", category=" + category + ", image=" + image + ", cooktime=" + cooktime + ", likes=" + likes
				+ ", hit=" + hit + ", id=" + id + ", nick_name=" + nick_name + "]";
	}
	
	
	

}

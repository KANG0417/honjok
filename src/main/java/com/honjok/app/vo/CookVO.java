package com.honjok.app.vo;

public class CookVO {
	private String type,
	image,
	p_num,
	cooktime,
	com_seq,
	title,
	id,
	content,
	regdate,
	hit,
	likes,
	nickname;

	public CookVO() {}

	public CookVO(String type, String image, String p_num, String cooktime, String com_seq, String title, String id,
			String content, String regdate, String hit, String likes, String nickname) {
		super();
		this.type = type;
		this.image = image;
		this.p_num = p_num;
		this.cooktime = cooktime;
		this.com_seq = com_seq;
		this.title = title;
		this.id = id;
		this.content = content;
		this.regdate = regdate;
		this.hit = hit;
		this.likes = likes;
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "CookVO [type=" + type + ", image=" + image + ", p_num=" + p_num + ", cooktime=" + cooktime
				+ ", com_seq=" + com_seq + ", title=" + title + ", id=" + id + ", content=" + content + ", regdate="
				+ regdate + ", hit=" + hit + ", likes=" + likes + ", nickname=" + nickname + "]";
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getCooktime() {
		return cooktime;
	}

	public void setCooktime(String cooktime) {
		this.cooktime = cooktime;
	}

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

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getLikes() {
		return likes;
	}

	public void setLikes(String likes) {
		this.likes = likes;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	

	
	

}

package com.honjok.app.vo;

public class CookVO {
	private String type, com_seq, image, p_num, cooktime;
	private String title, id, content, hit, likes,regdate;
	private CommunityVO comm;

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

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public void setComm(CommunityVO comm) {
		this.comm = comm;
	}

	public CommunityVO getComm() {
		return comm;
	}

	public CookVO(String type, String com_seq, String image, String p_num, String time, CommunityVO comm) {
		
	}

	public CookVO() {
		
	}

	
	
	public CookVO(String type, String com_seq, String image, String p_num, String cooktime, String title, String id,
			String content, String hit, String likes, String regdate, CommunityVO comm) {
		super();
		this.type = type;
		this.com_seq = com_seq;
		this.image = image;
		this.p_num = p_num;
		this.cooktime = cooktime;
		this.title = title;
		this.id = id;
		this.content = content;
		this.hit = hit;
		this.likes = likes;
		this.regdate = regdate;
		this.comm = comm;
	}

	@Override
	public String toString() {
		return "CookVO [type=" + type + ", com_seq=" + com_seq + ", image=" + image + ", p_num=" + p_num + ", time="
				+ cooktime + ", title=" + title + ", id=" + id + ", content=" + content + ", hit=" + hit + ", likes="
				+ likes + ", regdate=" + regdate + ", comm=" + comm + "]";
	}

}

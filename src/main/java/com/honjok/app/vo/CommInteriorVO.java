package com.honjok.app.vo;

public class CommInteriorVO {
	private String file_image, id, title, content, com_seq, hit, likes,regdate, nick_name, show;
	
	public CommInteriorVO() {}

	public CommInteriorVO(int type, String id, String file_image, String title, String content, String com_seq,
			String hit, String likes, String regdate, String nick_name, String show) {
		super();
		this.id = id;
		this.file_image = file_image;
		this.title = title;
		this.content = content;
		this.com_seq = com_seq;
		this.hit = hit;
		this.likes = likes;
		this.regdate = regdate;
		this.nick_name = nick_name;
		this.show = show;
	}

	public String getFile_image() {
		return file_image;
	}

	public void setFile_image(String file_image) {
		this.file_image = file_image;
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

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	
	public String getShow() {
		return show;
	}

	public void setShow(String show) {
		this.show = show;
	}

	@Override
	public String toString() {
		return "CommInteriorVO [file_image=" + file_image + ", title=" + title + ", id=" + id +
				", content=" + content + ", com_seq=" + com_seq + ", hit=" + hit + ", likes=" + likes + ", regdate="
				+ regdate + ", nick_name=" + nick_name + ", show" + show + "]";
	}
}

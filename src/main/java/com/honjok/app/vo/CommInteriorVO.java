package com.honjok.app.vo;

import java.sql.Date;

public class CommInteriorVO {
	private String fileImage, id, title, content, comSeq, hit, likes, nickName, show;
	private Date regdate;
	
	public CommInteriorVO() {}

	public CommInteriorVO(int type, String id, String fileImage, String title, String content, String comSeq,
			String hit, String likes, Date regdate, String nickName, String show) {
		super();
		this.id = id;
		this.fileImage = fileImage;
		this.title = title;
		this.content = content;
		this.comSeq = comSeq;
		this.hit = hit;
		this.likes = likes;
		this.regdate = regdate;
		this.nickName = nickName;
		this.show = show;
	}

	public String getFile_image() {
		return fileImage;
	}

	public void setFile_image(String fileImage) {
		this.fileImage = fileImage;
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

	public String getcomSeq() {
		return comSeq;
	}

	public void setcomSeq(String comSeq) {
		this.comSeq = comSeq;
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

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getnickName() {
		return nickName;
	}

	public void setnickName(String nickName) {
		this.nickName = nickName;
	}
	
	public String getShow() {
		return show;
	}

	public void setShow(String show) {
		this.show = show;
	}

	public String toString() {
		return "CommInteriorVO [fileImage=" + fileImage + ", title=" + title + ", id=" + id +
				", content=" + content + ", comSeq=" + comSeq + ", hit=" + hit + ", likes=" + likes + ", regdate="
				+ regdate + ", nickName=" + nickName + ", show" + show + "]";
	}
}

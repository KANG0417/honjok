package com.honjok.app.vo;

public class CommInfoVO {
	String com_seq, sum_star, adr, menu, title, id, content, type, hit, likes,regdate, nickname;;

	
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getCom_seq() {
		return com_seq;
	}

	public void setCom_seq(String com_seq) {
		this.com_seq = com_seq;
	}

	public String getSum_star() {
		return sum_star;
	}

	public void setSum_star(String sum_star) {
		this.sum_star = sum_star;
	}

	public String getAdr() {
		return adr;
	}

	public void setAdr(String adr) {
		this.adr = adr;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	@Override
	public String toString() {
		return "CommInfoVO [com_seq=" + com_seq + ", sum_star=" + sum_star + ", adr=" + adr + ", menu=" + menu
				+ ", title=" + title + ", id=" + id + ", content=" + content + ", type=" + type + ", hit=" + hit
				+ ", likes=" + likes + ", regdate=" + regdate + ", nickname=" + nickname + "]";
	}


}

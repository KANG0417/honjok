package com.honjok.comm;

public class CommunityVO {
	private String title, id, content, type;
	private int com_seq, hit, likes;
	
	
	@Override
	public String toString() {
		return "CommunityVO [title =" + title + ", id=" + id + ", content=" + content + ", type=" + type + ", com_seq="
				+ com_seq + ", hit=" + hit + ", likes=" + likes + "]";
	}
	
}

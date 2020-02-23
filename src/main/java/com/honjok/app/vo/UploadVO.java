package com.honjok.app.vo;

public class UploadVO {
	private String com_seq,
	up_file_num,
	up_origin_file,
	up_img_name,
	up_down_cnt,
	file_url,
	thum_url,
	up_file_row_size,
	up_file_col_size,
	up_file_type,
	up_file_date,
	type;

	public String getCom_seq() {
		return com_seq;
	}

	public void setCom_seq(String com_seq) {
		this.com_seq = com_seq;
	}

	public String getUp_file_num() {
		return up_file_num;
	}

	public void setUp_file_num(String up_file_num) {
		this.up_file_num = up_file_num;
	}

	public String getUp_origin_file() {
		return up_origin_file;
	}

	public void setUp_origin_file(String up_origin_file) {
		this.up_origin_file = up_origin_file;
	}

	public String getUp_img_name() {
		return up_img_name;
	}

	public void setUp_img_name(String up_img_name) {
		this.up_img_name = up_img_name;
	}

	public String getUp_down_cnt() {
		return up_down_cnt;
	}

	public void setUp_down_cnt(String up_down_cnt) {
		this.up_down_cnt = up_down_cnt;
	}

	public String getFile_url() {
		return file_url;
	}

	public void setFile_url(String file_url) {
		this.file_url = file_url;
	}

	public String getThum_url() {
		return thum_url;
	}

	public void setThum_url(String thum_url) {
		this.thum_url = thum_url;
	}

	public String getUp_file_row_size() {
		return up_file_row_size;
	}

	public void setUp_file_row_size(String up_file_row_size) {
		this.up_file_row_size = up_file_row_size;
	}

	public String getUp_file_col_size() {
		return up_file_col_size;
	}

	public void setUp_file_col_size(String up_file_col_size) {
		this.up_file_col_size = up_file_col_size;
	}

	public String getUp_file_type() {
		return up_file_type;
	}

	public void setUp_file_type(String up_file_type) {
		this.up_file_type = up_file_type;
	}

	public String getUp_file_date() {
		return up_file_date;
	}

	public void setUp_file_date(String up_file_date) {
		this.up_file_date = up_file_date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "UploadVO [com_seq=" + com_seq + ", up_file_num=" + up_file_num + ", up_origin_file=" + up_origin_file
				+ ", up_img_name=" + up_img_name + ", up_down_cnt=" + up_down_cnt + ", file_url=" + file_url
				+ ", thum_url=" + thum_url + ", up_file_row_size=" + up_file_row_size + ", up_file_col_size="
				+ up_file_col_size + ", up_file_type=" + up_file_type + ", up_file_date=" + up_file_date + ", type="
				+ type + "]";
	}
	
	
	
	
	

}

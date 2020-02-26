package com.honjok.app.vo;

/**
 * @author bitcamp
 *
 */
public class AdminVO {
	
	private String upperCategory;
	private String subCategory;
	private String subCategory2;
	private String pName;
	private String promotion;
	private String brandName;
	private String description;
	private int stock;
	private int price;
	private int discountRate;
	private int salePrice;
	private int shippingfee;
	
	
	public void setUpperCategory(String upperCategory) {
		this.upperCategory = upperCategory;
	}
	public void setSubCategory(String subCategory) {
		this.subCategory = subCategory;
	}
	public void setSubCategory2(String subCategory2) {
		this.subCategory2 = subCategory2;
	}

	public void setPromotion(String promotion) {
		this.promotion = promotion;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public void setShippingfee(int shippingfee) {
		this.shippingfee = shippingfee;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getUpperCategory() {
		return upperCategory;
	}
	public String getSubCategory() {
		return subCategory;
	}
	public String getSubCategory2() {
		return subCategory2;
	}

	public String getPromotion() {
		return promotion;
	}
	public String getBrandName() {
		return brandName;
	}
	public String getpName() {
		return pName;
	}

	public String getDescription() {
		return description;
	}
	public int getStock() {
		return stock;
	}
	public int getPrice() {
		return price;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public int getShippingfee() {
		return shippingfee;
	}
	@Override
	public String toString() {
		return "AdminVO [upperCategory=" + upperCategory + ", subCategory=" + subCategory + ", subCategory2="
				+ subCategory2 + ", pName=" + pName + ", promotion=" + promotion + ", brandName=" + brandName
				+ ", description=" + description + ", stock=" + stock + ", price=" + price + ", discountRate="
				+ discountRate + ", salePrice=" + salePrice + ", shippingfee=" + shippingfee + "]";
	}
	
	

	
}

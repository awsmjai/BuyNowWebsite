package com.mz.model;

public class ProductFinder extends Product{
   private String priceOperator;
   private String secondPrice;
public String getPriceOperator() {
	return priceOperator;
}
public void setPriceOperator(String priceOperator) {
	this.priceOperator = priceOperator;
}
public String getSecondPrice() {
	return secondPrice;
}
public void setSecondPrice(String secondPrice) {
	this.secondPrice = secondPrice;
}
}

package com.example.stockspring.model;
import java.io.*;
import java.math.BigDecimal;
import java.util.*;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="ipo_planned")
public class IPODetails {
	
	@Id
	@Column(name="id")
private int id;
@Column(name="company_code")	
private int companyCode;
@Column(name="stock_exchange")
private int stock_exchange;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
@Column(name="price")
private BigDecimal price;
@Column(name="total")
private int total;
@Column(name="date_time")
private String date_time;
@Column(name="remarks")
private String remarks;


public int getCompanyCode() {
	return companyCode;
}
public void setCompanyCode(int companyCode) {
	this.companyCode = companyCode;
}
public BigDecimal getPrice() {
	return price;
}
public void setPrice(BigDecimal price) {
	this.price = price;
}
public int getTotal() {
	return total;
}
public void setTotal(int total) {
	this.total = total;
}
public int getStock_exchange() {
	return stock_exchange;
}
public void setStock_exchange(int stock_exchange) {
	this.stock_exchange = stock_exchange;
}
public  String getDate_time() {
	return date_time;
}
public void setDate_time( String date_time) {
	this.date_time = date_time;
}
public String getRemarks() {
	return remarks;
}
public void setRemarks(String remarks) {
	this.remarks = remarks;
}


}

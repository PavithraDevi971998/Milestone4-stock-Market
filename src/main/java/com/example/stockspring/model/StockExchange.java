package com.example.stockspring.model;
import java.io.*;
import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="stockexchange")
public class StockExchange {
	@Id
	@Column(name="stockexchange_id")
private int stockexchange_id;
	@Column(name="stockexchange_name")
private String stockexchange_name;
	@Column(name="brief")
private String brief;
	@Column(name="address")
private String address;
	@Column(name="remarks")
private String remarks;


public String getStockexchange_name() {
	return stockexchange_name;
}
public void setStockexchange_name(String stockexchange_name) {
	this.stockexchange_name = stockexchange_name;
}
public String getBrief() {
	return brief;
}
public void setBrief(String brief) {
	this.brief = brief;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getRemarks() {
	return remarks;
}
public void setRemarks(String remarks) {
	this.remarks = remarks;
}
}

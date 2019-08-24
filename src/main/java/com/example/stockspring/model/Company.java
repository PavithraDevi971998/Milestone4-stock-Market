package com.example.stockspring.model;
import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
@Entity
@Table(name="company")
public class Company {
	@Id
	@Column(name="company_code")
	@Max(value=2000, message="Enter Proper employee id")
	private int companyCode;
	@NotEmpty(message="please enter username")
	@Pattern(regexp="[a-z]{2,20}", message="Please enter 4-6 small case character")
	@Column(name="company_name")
private String companyName;
	@Column(name="turnover")
private BigDecimal turnOver;
//	@OneToMany(mappedBy="company")
	//List<StockPrice> stockprice;
	@Column(name="ceo")
private String ceo;
	@NotEmpty(message="please enter board of directors")
	@Column(name="board_of_directors")
private String boardOfDirectors;
	
	@Column(name="sectorid")
private int sectorid;
	@NotEmpty(message="please enter briefwriteup")
	@Column(name="briefwriteup")
private String briefWriteup;
	@Column(name="stock_code")
private String stockCode;

public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
public int getCompanyCode() {
	return companyCode;
}
public void setCompany_code(int companyCode) {
	this.companyCode = companyCode;
}

public BigDecimal getTurnOver() {
	return turnOver;
}
public void setTurnOver(BigDecimal turnOver) {
	this.turnOver = turnOver;
}
public String getCeo() {
	return ceo;
}
public void setCeo(String ceo) {
	this.ceo = ceo;
}
public String getBoardOfDirectors() {
	return boardOfDirectors;
}
public void setBoardOfDirectors(String boardOfDirectors) {
	this.boardOfDirectors = boardOfDirectors;
}




public int getSectorid() {
	return sectorid;
}
public void setSectorid(int sectorid) {
	this.sectorid = sectorid;
}
public String getBriefWriteup() {
	return briefWriteup;
}
public void setBriefWriteup(String briefWriteup) {
	this.briefWriteup = briefWriteup;
}
public String getStockCode() {
	return stockCode;
}
public void setStockCode(String stockCode) {
	this.stockCode = stockCode;
}



}

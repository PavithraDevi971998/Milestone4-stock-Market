package com.example.stockspring.service;

import java.sql.SQLException;
import java.util.List;

import com.example.stockspring.model.Company;
import com.example.stockspring.model.IPODetails;

public interface IPODetailsService {
	public void insertIpoDetails(IPODetails ipoDetails);
	public List<IPODetails> getIPODetailsList() throws SQLException;

}

package com.example.stockspring.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.stockspring.dao.IPODetailsDao;
import com.example.stockspring.model.IPODetails;
@Service
public class IPODetailsServiceImpl implements IPODetailsService {
@Autowired
private IPODetailsDao ipoDetailsDao;
	public void insertIpoDetails(IPODetails ipoDetails) {
		// TODO Auto-generated method stub
		System.out.println("hi");
		ipoDetailsDao.save(ipoDetails);

	}
	public List<IPODetails> getIPODetailsList() throws SQLException {
		// TODO Auto-generated method stub
		return ipoDetailsDao.findAll();
	}

}

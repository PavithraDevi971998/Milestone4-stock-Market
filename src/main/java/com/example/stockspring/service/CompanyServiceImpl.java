package com.example.stockspring.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.stockspring.dao.CompanyDao;

import com.example.stockspring.model.Company;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyDao companyDao;
	
	public void insertCompany(Company company) throws SQLException {
	companyDao.save(company);
		
		
	}

	public Company updateCompany(Company company) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Company> getCompanyList() throws SQLException {
		return companyDao.findAll();
	}

}

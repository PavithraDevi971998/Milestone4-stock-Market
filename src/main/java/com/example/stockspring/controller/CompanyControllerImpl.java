package com.example.stockspring.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.stockspring.model.Company;
import com.example.stockspring.service.CompanyService;
import com.example.stockspring.service.CompanyServiceImpl;

@Controller
public class CompanyControllerImpl implements CompanyController{

	
	@Autowired
	private CompanyService companyService;

	@RequestMapping( value = "/addCompany", method = RequestMethod.GET)
	public String getEmployeeForm(ModelMap model) {
		System.out.println(" addCompany");
		Company e=new Company();
		model.addAttribute("e1", e);
		return "InsertCompany";
	}
	@RequestMapping(value = "/addCompany", method = RequestMethod.POST)
	public String formHandler(@ModelAttribute("e1") @Valid Company employee, 
			BindingResult result, Model model) throws SQLException {
		System.out.println(employee);
		if(result.hasErrors()){
			
			return "InsertCompany";
		}
		companyService.insertCompany(employee);
		return "redirect:/companyList";
		}

	public Company updateCompany(Company company) {
		// TODO Auto-generated method stub
		return null;
	}

	@RequestMapping(path="/companyList")
	public ModelAndView getCompanyList() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("companyList");
		mv.addObject("companyList",companyService.getCompanyList());
		return mv;
	}
	
	
	public static void main(String [] args) {
		CompanyController controller=new CompanyControllerImpl();
		try {
			System.out.println(controller.getCompanyList());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}

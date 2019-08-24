package com.example.stockspring.controller;

import java.sql.SQLException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.stockspring.model.Company;
import com.example.stockspring.model.StockExchange;
import com.example.stockspring.service.CompanyService;
import com.example.stockspring.service.StockExchangeService;
@Controller
public class StockExchangeControllerImpl {
	@Autowired
	private StockExchangeService stockExchangeService;
	@RequestMapping( value = "/addstockExchange", method = RequestMethod.GET)
	public String getEmployeeForm(ModelMap model) {
		System.out.println("add employee");
		StockExchange e=new StockExchange();
		model.addAttribute("se1", e);
		return "stockExchange";
	}
	@RequestMapping(value = "/addstockExchange", method = RequestMethod.POST)
	public String formHandler(@ModelAttribute("se1") @Valid StockExchange stockExchange, 
			BindingResult result, Model model) throws SQLException {
		System.out.println(stockExchange);
		if(result.hasErrors()){
			
			return "stockExchange";
		}
		stockExchangeService.insert(stockExchange);
		return "stockExchange";
		}
	@RequestMapping(path="/stockexchangelist")
	public ModelAndView getCompanyList() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("stockexchangelist");
		mv.addObject("stockexchangelist",stockExchangeService.getCompanyList());
		return mv;
	}
}

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

import com.example.stockspring.model.IPODetails;
import com.example.stockspring.service.IPODetailsService;
@Controller
public class IPODetailsControllerImpl {
@Autowired
private IPODetailsService ipoDetailsService;
	@RequestMapping( value = "/addIpodetails", method = RequestMethod.GET)
	public String getEmployeeForm(ModelMap model) {
		System.out.println("add employee");
		IPODetails e=new IPODetails();
		model.addAttribute("ipo1", e);
		return "IPODetails";
	}
	@RequestMapping(value = "/addIpodetails", method = RequestMethod.POST)
	public String formHandler(@ModelAttribute("ipo1") @Valid IPODetails ipoDetails, 
			BindingResult result, Model model) throws SQLException {
		System.out.println(ipoDetails);
if(result.hasErrors()){
			
			return "IPODetails";
		}
ipoDetailsService.insertIpoDetails(ipoDetails);
return "IPODetails";
		}
		
	@RequestMapping(path="/ipoDetailsList")
	public ModelAndView getCompanyList() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ipoDetailsList");
		mv.addObject("ipoDetailsList",ipoDetailsService.getIPODetailsList());
		return mv;
	}
}

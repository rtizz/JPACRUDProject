package com.skilldistillery.gardening.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.gardening.data.GardeningDAO;

@Controller
public class GardeningController {
	
	@Autowired
	private GardeningDAO gdao;
	
	@RequestMapping(path={"/", "home.do"})
	public String goHome(Model model) {
		model.addAttribute("plants", gdao.findAll());
		return "home";
	}

}

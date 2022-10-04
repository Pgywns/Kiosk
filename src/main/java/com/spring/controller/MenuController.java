package com.spring.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.domain.CartVO;
import com.spring.domain.MenuVO;
import com.spring.service.MenuService;

@Controller
public class MenuController {

	@Inject
	private MenuService service;

	@RequestMapping(value = "/menu", method = RequestMethod.POST)
	public void getList(Model model) throws Exception {
		List<MenuVO> setlist = null;
		setlist = service.setlist();
		
		List<MenuVO> sidelist = null;
		sidelist = service.sidelist();
		
		List<MenuVO> burgerlist = null;
		burgerlist = service.burgerlist();
		
		List<MenuVO> morninglist = null;
		morninglist = service.morninglist();
		
		List<MenuVO> drinklist = null;
		drinklist = service.drinklist();
		
		List<MenuVO> ingrelist = null;
		ingrelist = service.ingrelist();
		
		model.addAttribute("setlist", setlist);
		model.addAttribute("burgerlist", burgerlist);
		model.addAttribute("morninglist", morninglist);
		model.addAttribute("drinklist", drinklist);
		model.addAttribute("sidelist", sidelist);
		model.addAttribute("ingrelist", ingrelist);
	}
	
	@RequestMapping(value = "/menu/incartinfo", method = RequestMethod.POST)
	public void insertcart(CartVO cart) {
		System.out.println(cart.getProductid());
		System.out.println(cart.getOrdernumber());
	}
}

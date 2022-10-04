package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.dao.MenuDAO;
import com.spring.domain.MenuVO;

@Service
public class MenuServiceImpl implements MenuService {
	
	@Inject
	private MenuDAO dao;

	@Override
	public List<MenuVO> morninglist() throws Exception {
		return dao.morninglist();
	}

	@Override
	public List<MenuVO> setlist() throws Exception {
		return dao.setlist();
	}

	@Override
	public List<MenuVO> burgerlist() throws Exception {
		return dao.burgerlist();
	}

	@Override
	public List<MenuVO> sidelist() throws Exception {
		return dao.sidelist();
	}

	@Override
	public List<MenuVO> drinklist() throws Exception {
		return dao.drinklist();
	}
	
	@Override
	public List<MenuVO> ingrelist() throws Exception {
		return dao.ingrelist();
	}
}

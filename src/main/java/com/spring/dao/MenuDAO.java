package com.spring.dao;

import java.util.List;

import com.spring.domain.MenuVO;

public interface MenuDAO {
	
	public List<MenuVO> setlist() throws Exception;
	
	public List<MenuVO> morninglist() throws Exception;
	
	public List<MenuVO> burgerlist() throws Exception;
	
	public List<MenuVO> sidelist() throws Exception;
	
	public List<MenuVO> drinklist() throws Exception;
	
	public List<MenuVO> ingrelist() throws Exception;
	
}

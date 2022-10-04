package com.spring.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.MenuVO;

@Repository
public class MenuDAOImpl implements MenuDAO {

	@Inject
	private SqlSession sql;

	private static String namespace = "com.spring.mappers.menu";

	@Override
	public List<MenuVO> setlist() throws Exception {
		return sql.selectList(namespace + ".setlist");
	}

	@Override
	public List<MenuVO> morninglist() throws Exception {
		return sql.selectList(namespace + ".morninglist");
	}

	@Override
	public List<MenuVO> burgerlist() throws Exception {
		return sql.selectList(namespace + ".burgerlist");
	}

	@Override
	public List<MenuVO> sidelist() throws Exception {
		return sql.selectList(namespace + ".sidelist");
	}

	@Override
	public List<MenuVO> drinklist() throws Exception {
		return sql.selectList(namespace + ".drinklist");
	}

	@Override
	public List<MenuVO> ingrelist() throws Exception {
		return sql.selectList(namespace + ".ingrelist");
	}
	
}

package com.jxust.svsh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jxust.svsh.dao.BoardDAO;
import com.jxust.svsh.entity.Board;

@Transactional
@Service
public class BoardService {
	
	@Autowired
	public BoardDAO boardDAO;
	
	/*查询所有Board*/
	public List<Board> getAllBoard(){
		return boardDAO.getAllBoard();
	}
	
}

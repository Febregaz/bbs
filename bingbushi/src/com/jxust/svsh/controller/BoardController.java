package com.jxust.svsh.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jxust.svsh.entity.Board;
import com.jxust.svsh.service.BoardService;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	public BoardService boardService;
	
	@RequestMapping(value="goto")
	public String go(){
		return "board";
	}
	
	@RequestMapping(value="getallboard")
	@ResponseBody
	public List<Board> getAllBoard(){
		System.out.println("board查询正在进行");
		List<Board> list=boardService.getAllBoard();
		System.out.println("Board的个数:"+list.size());
		//map.put("board_list", list);
		//System.out.println("board查询已经结束");
		return list;
	}
}

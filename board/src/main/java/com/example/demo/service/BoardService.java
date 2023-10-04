package com.example.demo.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.example.demo.vo.BoardVo;

public interface BoardService {

	public String write();
	public String writeOk(HttpServletRequest req);
	public String list(BoardVo bvo, Model model);
}



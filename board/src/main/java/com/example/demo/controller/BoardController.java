package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.BoardService;
import com.example.demo.vo.BoardVo;

@Controller
public class BoardController {

	@Autowired
	@Qualifier("bs")
	private BoardService service;
	
	@RequestMapping("/write")
	public String write() {
		return service.write();
	}
	
	@RequestMapping("/")
	public String home() {
		return "redirect:/write";
	}
	
	@RequestMapping("/writeOk")
	public String writeOk(HttpServletRequest req) {
		return service.writeOk(req);
	}
	
	@RequestMapping("/list")
	public String list(BoardVo bvo,Model model) {
		return service.list(bvo,model);
	}
	
}

package com.example.demo.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.mapper.BoardMapper;
import com.example.demo.vo.BoardVo;

@Service
@Qualifier("bs")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	@Override
	public String write() {
		
		return "/write";
	}

	@Override
	public String writeOk(HttpServletRequest req) {
		String[] imsi = req.getParameterValues("chk6");
		String chk6 = "";
		for(int i=0; i<imsi.length; i++) {
			chk6 = chk6 + imsi[i] +",";
		}
		BoardVo bvo = new BoardVo();
		bvo.setChk1(Integer.parseInt(req.getParameter("chk1")));
		bvo.setChk2(Integer.parseInt(req.getParameter("chk2")));
		bvo.setChk3(Integer.parseInt(req.getParameter("chk3")));
		bvo.setChk4(Integer.parseInt(req.getParameter("chk4")));
		bvo.setChk5(Integer.parseInt(req.getParameter("chk5")));
		bvo.setChk6(chk6);
		bvo.setChk7(Integer.parseInt(req.getParameter("chk7")));
		bvo.setChk8(Integer.parseInt(req.getParameter("chk8")));
		bvo.setChk9(Integer.parseInt(req.getParameter("chk9")));
		bvo.setChk10(req.getParameter("chk10"));
		mapper.writeOk(bvo);
		return "/list";
	}

	@Override
	public String list(BoardVo bvo, Model model) {
		ArrayList<BoardVo> blist = mapper.list();
		Integer chk1_1 = 0,chk1_2=0,chk1_3=0,chk1_4=0,chk1_5=0,chk1_6=0;
		Integer chk2_1=0,chk2_2=0,chk2_3=0;
		for(int i=1; i<blist.size()+1; i++) {
			String num = "chk"+i;
			if(num.equals("chk1")) {
				chk1_1 = mapper.chk(num, 1);
				chk1_2 = mapper.chk(num, 2);
				chk1_3 = mapper.chk(num, 3);
				chk1_4 = mapper.chk(num, 4);
				chk1_5 = mapper.chk(num, 5);
				chk1_6 = mapper.chk(num, 6);
			}
			if(num.equals("chk2")) {
				chk2_1 = mapper.chk(num, 1);
				chk2_2 = mapper.chk(num, 2);
				chk2_3 = mapper.chk(num, 3);
			}
		}
		model.addAttribute("chk1_1",chk1_1);
		model.addAttribute("chk1_2",chk1_2);
		model.addAttribute("chk1_3",chk1_3);
		model.addAttribute("chk1_4",chk1_4);
		model.addAttribute("chk1_5",chk1_5);
		model.addAttribute("chk1_6",chk1_6);
		model.addAttribute("chk2_1",chk2_1);
		model.addAttribute("chk2_2",chk2_2);
		model.addAttribute("chk2_3",chk2_3);
		
		return "/list";
	}
	
	
}

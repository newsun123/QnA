package com.example.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.BoardVo;

@Mapper
public interface BoardMapper {
	public void writeOk(BoardVo bvo);
	public ArrayList<BoardVo> list();
	public Integer chk(String chk,int num);

}

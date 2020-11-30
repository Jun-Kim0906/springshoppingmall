package com.mycrud.crud.service;

import java.util.List;

import com.mycrud.crud.board.BoardVO;

public interface BoardService {
	public int insertBoard(BoardVO vo);
	public int deleteBoard(int seq);
	public int updateBoard(BoardVO vo);
	public BoardVO getBoard(int seq);
	public List<BoardVO>getBoardList();
	

}
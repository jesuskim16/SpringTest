package com.pam.test.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pam.test.board.notice.vo.NoticeVO;

@Service
public interface ISpringTestDao {

	void testConn();

	List<NoticeVO> noticeBoardService();

}

package com.pam.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pam.test.board.notice.vo.NoticeVO;
import com.pam.test.dao.ISpringTestDao;

@Service
public class PamService {

	@Autowired
	private ISpringTestDao iSpringTestDao;
	
	public void dbConnectionTest(){
		iSpringTestDao.testConn();
	}

	public List<NoticeVO> noticeBoardService() {
		return iSpringTestDao.noticeBoardService();
	}
	
}

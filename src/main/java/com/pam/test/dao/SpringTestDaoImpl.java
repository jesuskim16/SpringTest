package com.pam.test.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pam.test.board.notice.vo.NoticeVO;

@Repository
public class SpringTestDaoImpl implements ISpringTestDao{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void testConn() {
		String test = null;
		test = sqlSessionTemplate.selectOne("SPRING_TEST.test");
		System.out.println("test : " + test);
		
	}
	
	@Override
	public List<NoticeVO> noticeBoardService() {
		List<NoticeVO> noticeVOList = new ArrayList<NoticeVO>();
		noticeVOList = sqlSessionTemplate.selectList("SPRING_TEST.notice");
		return noticeVOList;
	}
}

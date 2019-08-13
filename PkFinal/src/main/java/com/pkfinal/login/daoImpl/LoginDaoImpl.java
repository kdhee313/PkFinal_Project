package com.pkfinal.login.daoImpl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pkfinal.login.dao.LoginDao;
import com.pkfinal.main.members.vo.MembersVo;

@Repository
public class LoginDaoImpl implements LoginDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MembersVo loginAction(HashMap<String, Object> map) {
		MembersVo membersVo = sqlSession.selectOne("Members.IdDupCheck", map);
		return membersVo;
	}

}

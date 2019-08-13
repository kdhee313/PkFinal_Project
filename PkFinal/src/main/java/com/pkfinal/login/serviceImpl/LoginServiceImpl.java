package com.pkfinal.login.serviceImpl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pkfinal.login.dao.LoginDao;
import com.pkfinal.login.service.LoginService;
import com.pkfinal.main.members.vo.MembersVo;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;
	
	@Override
	public MembersVo loginAction(HashMap<String, Object> map) {
		return loginDao.loginAction(map);
	}
	
}

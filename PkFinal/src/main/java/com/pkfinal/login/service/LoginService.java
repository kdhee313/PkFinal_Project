package com.pkfinal.login.service;

import java.util.HashMap;

import com.pkfinal.main.members.vo.MembersVo;

public interface LoginService {

	public MembersVo loginAction(HashMap<String, Object> map);

}

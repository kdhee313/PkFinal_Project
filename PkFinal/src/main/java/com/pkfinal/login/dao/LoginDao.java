package com.pkfinal.login.dao;

import java.util.HashMap;

import com.pkfinal.main.members.vo.MembersVo;

public interface LoginDao {

	MembersVo loginAction(HashMap<String, Object> map);

}

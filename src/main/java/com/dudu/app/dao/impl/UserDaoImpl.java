package com.dudu.app.dao.impl;

import org.springframework.stereotype.Repository;

import com.dudu.app.common.BaseDaoImpl;
import com.dudu.app.dao.UserDao;
import com.dudu.app.entity.User;

@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<User, String> implements UserDao {
	
	public UserDaoImpl() {
		super();
	}
	
	public void test(){
		logger.info("test");
	}
}

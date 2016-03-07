package com.dudu.app.dao.impl;

import java.util.logging.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.dudu.app.common.BaseDaoImpl;
import com.dudu.app.dao.UserDao;
import com.dudu.app.entity.User;

@Repository(value = "userDao")
public class UserDaoImpl extends BaseDaoImpl<User, String> implements UserDao {
	private static final Logger logger = (Logger) LoggerFactory.getLogger(BaseDaoImpl.class);
	public void test(){
		logger.info("test");
		
	}
}

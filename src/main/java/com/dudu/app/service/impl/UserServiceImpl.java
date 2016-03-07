package com.dudu.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dudu.app.common.BaseServiceImpl;
import com.dudu.app.dao.UserDao;
import com.dudu.app.entity.User;
import com.dudu.app.service.UserService;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
	@Autowired
	UserDao userDao;

	@Autowired
	public UserServiceImpl(UserDao userDao) {
		super(userDao);
	}

}

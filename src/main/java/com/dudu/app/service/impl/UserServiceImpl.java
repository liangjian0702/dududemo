package com.dudu.app.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.dudu.app.common.BaseServiceImpl;
import com.dudu.app.dao.UserDao;
import com.dudu.app.entity.User;
import com.dudu.app.service.UserService;

@Repository(value = "userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
	@Resource
	UserDao userDao;


}

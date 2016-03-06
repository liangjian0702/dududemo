package com.dudu.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.dudu.app.dao.UserDao;
import com.dudu.app.entity.User;
import com.dudu.app.service.UserService;

@Repository(value = "userService")
public class UserServiceImpl implements UserService {
	@Resource
	UserDao userDao;

	@Override
	public void save(User user) {
		this.userDao.save(user);
	}

	@Override
	public void update(User user) {
		this.userDao.update(user);
	}

	@Override
	public void delete(User user) {
		this.userDao.delete(user);
	}

	@Override
	public User findByUserId(String id) {
		return this.userDao.findByUserId(id);
	}

	@Override
	public List<User> findByCriteria(User user) {
		return this.userDao.findByCriteria(user);
	}

}

package com.dudu.app.dao;

import com.dudu.app.entity.User;

public interface UserDao {
	void save(User user);
	void update(User user);
	void delete(User user);
	User findByUserId(String id);
}

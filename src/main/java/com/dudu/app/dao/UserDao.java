package com.dudu.app.dao;

import java.util.List;

import com.dudu.app.entity.User;

public interface UserDao {
	void save(User user);
	void update(User user);
	void delete(User user);
	User findByUserId(String id);
	List<User> findByCriteria(User user);
}

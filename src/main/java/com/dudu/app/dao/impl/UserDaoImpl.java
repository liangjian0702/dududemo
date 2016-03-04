package com.dudu.app.dao.impl;

import java.util.Collection;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dudu.app.entity.User;

@Repository(value = "userDao")
public class UserDaoImpl implements com.dudu.app.dao.UserDao {

	@Resource
	private SessionFactory sessionFactory;

	public Collection loadProductsByCategory(String category) {
		return this.sessionFactory.getCurrentSession().createQuery("from test.Product product where product.category=?")
				.setParameter(0, category).list();
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		return this.sessionFactory.openSession();
	}

	@Override
	@Transactional
	public void save(User user) {
		this.getSession().save(user);
	}

	@Override
	public void update(User user) {
		this.getSession().update(user);
	}

	@Override
	public void delete(User user) {
		this.getSession().delete(user);
	}

	@Override
	public User findByUserId(String id) {
		return null;
	}

}

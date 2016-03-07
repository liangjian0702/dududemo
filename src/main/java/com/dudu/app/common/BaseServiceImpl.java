package com.dudu.app.common;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public class BaseServiceImpl<T extends Serializable> implements BaseService<T> {

	private BaseDao<T,String> baseDao;  
	
	@Override
	public T get(String id) {
		return baseDao.get(id);
	}

	@Override
	public T update(T entity) {
		return baseDao.update(entity);
	}

	@Override
	public T save(T entity) {
		return baseDao.save(entity);
	}

	@Override
	public T saveOrUpdate(T entity) {
		return baseDao.saveOrUpdate(entity);
	}

	@Override
	public void delete(T entity) {
		baseDao.delete(entity);
	}

	@Override
	public void deleteAll(Collection<T> entities) {
		baseDao.deleteAll(entities);
	}

	@Override
	public List<T> findByCriteria(DetachedCriteria criteria) {
		return baseDao.findByCriteria(criteria);
	}

}

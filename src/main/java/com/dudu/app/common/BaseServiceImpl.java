package com.dudu.app.common;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public class BaseServiceImpl<T extends Serializable> implements BaseService<T> {

	private final BaseDao<T, String> baseDao;

	protected BaseServiceImpl(BaseDao<T, String> baseDao) {
		this.baseDao = baseDao;
	}

	@Override
	public T get(String id) throws Exception {
		return baseDao.get(id);
	}

	@Override
	public T update(T entity) throws Exception {
		return baseDao.update(entity);
	}

	@Override
	public T save(T entity) throws Exception {
		return baseDao.save(entity);
	}

	@Override
	public T saveOrUpdate(T entity) throws Exception {
		return baseDao.saveOrUpdate(entity);
	}

	@Override
	public void delete(T entity) throws Exception {
		baseDao.delete(entity);
	}

	@Override
	public void deleteAll(Collection<T> entities) throws Exception {
		baseDao.deleteAll(entities);
	}

	@Override
	public List<T> findByCriteria(DetachedCriteria criteria) throws Exception {
		return baseDao.findByCriteria(criteria);
	}

}

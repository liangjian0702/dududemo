package com.dudu.app.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;

public interface BaseDao<T extends Serializable, PK extends Serializable> {
	public T get(PK id);

	public void update(T entity);

	public void save(T entity);

	public void saveOrUpdate(T entity);

	public void saveOrUpdateAll(Collection<T> entities);

	public void delete(T entity);

	public void deleteByKey(PK id);

	public void deleteAll(Collection<T> entities);

	public DetachedCriteria createDetachedCriteria();

	public Criteria createCriteria();

	public List<T> findByCriteria(DetachedCriteria criteria);

	public List<T> findByCriteria(DetachedCriteria criteria, int firstResult, int maxResults);

	public Integer getRowCount(DetachedCriteria criteria);
}

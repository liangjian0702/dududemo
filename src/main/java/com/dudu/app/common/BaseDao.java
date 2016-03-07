package com.dudu.app.common;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;

public interface BaseDao<T extends Serializable, PK extends Serializable> {
	public T get(PK id) throws Exception;

	public T update(T entity) throws Exception;

	public T save(T entity) throws Exception;

	public T saveOrUpdate(T entity) throws Exception;

	public void saveOrUpdateAll(Collection<T> entities) throws Exception;

	public void delete(T entity) throws Exception;

	public void deleteByKey(PK id) throws Exception;

	public void deleteAll(Collection<T> entities) throws Exception;

	public DetachedCriteria createDetachedCriteria(Criterion... criterions) throws Exception;
	
	public Criteria createCriteria(Criterion... criterions) throws Exception;

	public List<T> findByCriteria(DetachedCriteria criteria) throws Exception;

	public List<T> findByCriteria(DetachedCriteria criteria, int pageIndex, int pageSize) throws Exception;

	public Integer getCount(DetachedCriteria criteria) throws Exception;
}

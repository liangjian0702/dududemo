package com.dudu.app.common;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;

public interface BaseDao<T extends Serializable, PK extends Serializable> {
	public T get(PK id);

	public T update(T entity);

	public T save(T entity);

	public T saveOrUpdate(T entity);

	public void saveOrUpdateAll(Collection<T> entities);

	public void delete(T entity);

	public void deleteByKey(PK id);

	public void deleteAll(Collection<T> entities);

	public DetachedCriteria createDetachedCriteria(Criterion... criterions);
	
	public Criteria createCriteria(Criterion... criterions);

	public List<T> findByCriteria(DetachedCriteria criteria);

	public List<T> findByCriteria(DetachedCriteria criteria, int pageIndex, int pageSize);

	public Integer getCount(DetachedCriteria criteria);
}

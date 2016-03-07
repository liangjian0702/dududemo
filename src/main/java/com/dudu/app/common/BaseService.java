package com.dudu.app.common;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public interface BaseService<T extends Serializable> {
	public T get(String id);

	public T update(T entity);

	public T save(T entity);

	public T saveOrUpdate(T entity);

	public void delete(T entity);

	public void deleteAll(Collection<T> entities);

	public List<T> findByCriteria(DetachedCriteria criteria);
}

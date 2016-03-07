package com.dudu.app.common;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public interface BaseService<T> {
	public T get(String id) throws Exception;

	public T update(T entity) throws Exception;

	public T save(T entity) throws Exception;

	public T saveOrUpdate(T entity) throws Exception;

	public void delete(T entity) throws Exception;

	public void deleteAll(Collection<T> entities) throws Exception;

	public List<T> findByCriteria(DetachedCriteria criteria) throws Exception;
}

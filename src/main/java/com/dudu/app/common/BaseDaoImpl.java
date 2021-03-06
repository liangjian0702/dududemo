package com.dudu.app.common;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class BaseDaoImpl<T extends Serializable, PK extends Serializable> extends HibernateDaoSupport
		implements BaseDao<T, PK>{

	protected static final Logger logger = LoggerFactory.getLogger(BaseDaoImpl.class);
	
	@Resource(name="sessionFactory")
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	private Class<?> entityClass = null;

	public Class<?> getEntityClass() {
		return entityClass;
	}

	public void setEntityClass(Class<?> entityClass) {
		this.entityClass = entityClass;
	}

	public BaseDaoImpl() {
		this.setEntityClass(this.getSuperClassType(getClass()));
	}

	protected Class<?> getSuperClassType(Class<?> c) {
		Type type = c.getGenericSuperclass();
		if (type instanceof ParameterizedType) {
			Type[] params = ((ParameterizedType) type).getActualTypeArguments();
			if (!(params[0] instanceof Class)) {
				return Object.class;
			}
			return (Class<?>) params[0];
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public T get(PK id) throws Exception {
		return (T) super.getHibernateTemplate().get(this.getEntityClass(), id);
	}

	@Override
	public T update(T entity) throws Exception {
		super.getHibernateTemplate().update(entity);
		return entity;
	}

	@Override
	public T save(T entity) throws Exception {
		super.getHibernateTemplate().save(entity);
		return entity;
	}

	@Override
	public T saveOrUpdate(T entity) throws Exception {
		super.getHibernateTemplate().saveOrUpdate(entity);
		return entity;
	}

	@Override
	public void saveOrUpdateAll(Collection<T> entities) throws Exception {
		// super.getHibernateTemplate();
	}

	@Override
	public void delete(T entity) throws Exception {
		super.getHibernateTemplate().delete(entity);
	}

	@Override
	public void deleteByKey(PK id) throws Exception {
		super.getHibernateTemplate().delete(this.get(id));
	}

	@Override
	public void deleteAll(Collection<T> entities) throws Exception {
		super.getHibernateTemplate().deleteAll(entities);

	}

	@Override
	public DetachedCriteria createDetachedCriteria(Criterion... criterions) throws Exception {
		DetachedCriteria dc = DetachedCriteria.forClass(this.entityClass);
		for (Criterion c : criterions) {
			dc.add(c);
		}
		return dc;
	}

	@Override
	public Criteria createCriteria(Criterion... criterions) throws Exception {
		DetachedCriteria dc = DetachedCriteria.forClass(this.entityClass);
		for (Criterion c : criterions) {
			dc.add(c);
		}
		return (Criteria) dc;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByCriteria(DetachedCriteria criteria) throws Exception {
		return (List<T>) getHibernateTemplate().findByCriteria(criteria);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByCriteria(DetachedCriteria criteria, int pageIndex, int pageSize) throws Exception {
		int firstResult = (pageIndex - 1) * pageSize;
		return (List<T>) super.getHibernateTemplate().findByCriteria(criteria, firstResult, pageSize);
	}

	@Override
	public Integer getCount(DetachedCriteria criteria) throws Exception {
		int count = ((Number) criteria.setProjection(Projections.rowCount()).getExecutableCriteria(currentSession())
				.uniqueResult()).intValue();
		criteria.setProjection(null);
		return count;
	}

}

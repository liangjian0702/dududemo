package com.dudu.app.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.dudu.app.dao.BaseDao;

public class BaseDaoImpl<T extends Serializable, PK extends Serializable> extends HibernateDaoSupport implements BaseDao<T, PK> {

    @Resource(name="sessionFactory")
    public void setSuperSessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }
    private Class<T> entityClass;
    @SuppressWarnings({ "unused", "unchecked" })
    private Class<T> getEntityClass(){
        if(entityClass==null){
            entityClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0]; 
        }
        return entityClass;
        
    }
	
	@Override
	public T get(PK id) {
		return super.getHibernateTemplate().get(this.getEntityClass(), id);
	}

	@Override
	public void update(T entity) {
		super.getHibernateTemplate().update(entity);
	}

	@Override
	public void save(T entity) {
		super.getHibernateTemplate().save(entity);
	}

	@Override
	public void saveOrUpdate(T entity) {
		super.getHibernateTemplate().saveOrUpdate(entity);
	}

	@Override
	public void saveOrUpdateAll(Collection<T> entities) {
//		super.getHibernateTemplate().saveOrUpdateAll(entities);
	}

	@Override
	public void delete(T entity) {
		super.getHibernateTemplate().delete(entity);
	}

	@Override
	public void deleteByKey(PK id) {
		super.getHibernateTemplate().delete(this.get(id));
	}

	@Override
	public void deleteAll(Collection<T> entities) {
//		this.getSession().de

	}

	@Override
	public DetachedCriteria createDetachedCriteria() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Criteria createCriteria() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<T> findByCriteria(DetachedCriteria criteria) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<T> findByCriteria(DetachedCriteria criteria, int firstResult, int maxResults) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer getRowCount(DetachedCriteria criteria) {
		// TODO Auto-generated method stub
		return null;
	}

}

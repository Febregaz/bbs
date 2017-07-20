package com.jxust.svsh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.jxust.svsh.entity.Topic;

@Repository
public class TopicDAO {
    @Resource
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    
    @SuppressWarnings("unchecked")
	public List<Topic> getalltopic(){
    	return this.getSession().createCriteria(Topic.class).list();
    }
}

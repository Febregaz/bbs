package com.jxust.svsh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.jxust.svsh.entity.Board;

@Repository
public class BoardDAO {
	
    @Resource
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    
    /*所有board*/
    @SuppressWarnings("unchecked")
	public List<Board> getAllBoard(){
    	return this.getSession().createCriteria(Board.class).list();
    }
}

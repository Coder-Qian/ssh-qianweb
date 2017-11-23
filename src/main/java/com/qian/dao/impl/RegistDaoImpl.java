package com.qian.dao.impl;

import java.io.Serializable;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.qian.dao.RegistDao;
import com.qian.domain.MsgUser;
import com.qian.domain.Register;
import com.qian.domain.WebUser;

@Repository("registDao")
public class RegistDaoImpl implements RegistDao {

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	@Override
	public boolean addWebUser(Register register) {
		Session session = sessionFactory.getCurrentSession();
		
		WebUser user = new WebUser();
		user.setUsername(register.getUsername());
		user.setPassword(register.getPassword());
		user.setEmail(register.getEmail());
		
		Serializable s = session.save(user);
		
		if(s!=null){
			return true;
		}else{
			return false;
		}// TODO Auto-generated method stub
	}

	@Override
	public int addMsgUser(MsgUser msgUser) {
		Session session = sessionFactory.getCurrentSession();
		
		Serializable s = session.save(msgUser);
		
		//return (int) s;
		return msgUser.getId();
	}

}

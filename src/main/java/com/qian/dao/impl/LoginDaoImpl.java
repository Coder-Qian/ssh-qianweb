package com.qian.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.qian.dao.LoginDao;
import com.qian.domain.Login;
import com.qian.domain.WebUser;

@Repository("loginDao")
public class LoginDaoImpl implements LoginDao {

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
	public boolean checkLoginInfo(Login login) {
		
		Session session = sessionFactory.getCurrentSession();
		
		String sql = "from WebUser w where w.username = ? and w.password=?";
		Query<WebUser> query = session.createQuery(sql);
		query.setParameter(0, login.getUsername());
		query.setParameter(1, login.getPassword());
		List<WebUser> list = query.list();
		
		System.out.println("--:"+sql+" "+list.toString());
		
		if(list.size()>0){
			return true;
		}else{
			return false;
		}
	}

}

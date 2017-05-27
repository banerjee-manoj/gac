package com.gac.daoImpls;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.gac.dao.LoginDao;

@Repository("loginDao")
public class LoginDaoImpl implements LoginDao {
	
	@Resource(name="sessionFactory")
	protected SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
 }

	protected Session getSession() {
		return sessionFactory.openSession();
	}

	
	 public boolean checkLogin(String userName, String userPassword){
			System.out.println("In Check login");
			Session session = sessionFactory.openSession();
			boolean userFound = false;
			//Query using Hibernate Query Language
			String SQL_QUERY =" from User as o where o.userName=? and o.userPassword=?";
			Query query = session.createQuery(SQL_QUERY);
			query.setParameter(0,userName);
			query.setParameter(1,userPassword);
			List list = query.list();

			if ((list != null) && (list.size() > 0)) {
				userFound= true;
			}

			session.close();
			return userFound;              
    }
	
	
	
	
	
	
}
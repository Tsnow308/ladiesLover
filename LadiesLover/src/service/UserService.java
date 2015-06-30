package service;

import java.util.List;

import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import javax.transaction.Transaction;

import model.User;
import model.UserDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.opensymphony.xwork2.config.Configuration;

public class UserService {
	
	private UserDAO userDAO;

	public User isValidUser(String username,String password){
		List userList = userDAO.findByUsername(username);
		User user = null;
		if (!userList.isEmpty()) {
			user = (User) userList.get(0);
		}
		
		if(user != null && user.getPassword().equalsIgnoreCase(password))
			return user;
		else
			return null;
	}
	
	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public boolean register(String username,String password){
//		User user = (User) userDAO.findByUsername(username);
		List list = userDAO.findByUsername(username);
		 if(list != null && list.size() != 0){
			 return false;
		 }
		 else{
			 org.hibernate.cfg.Configuration configuration = new org.hibernate.cfg.Configuration().configure();
			 SessionFactory sessionFactory = configuration.buildSessionFactory();
			 Session session = sessionFactory.openSession();
			 session.beginTransaction();
			 
			 User newuser = new User();
			 newuser.setUsername(username);
			 newuser.setPassword(password);
			 newuser.setEmail(username);
			 //userDAO.save(newuser);
			 session.save(newuser);
			 
			 session.getTransaction().commit();
			 
//			 try {
//				transaction.commit();
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} 
			 
			 return true;
		 }
	}
}

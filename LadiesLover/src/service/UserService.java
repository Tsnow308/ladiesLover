package service;

import model.User;
import model.UserDAO;

public class UserService {
	private UserDAO userDao = new UserDAO();

	public User isValidUser(String username,String password){
		User user = (User) userDao.findByUsername(username);
		if(user != null && user.getPassword().equalsIgnoreCase(password))
			return user;
		else
			return null;
	}
	
	public boolean register(String username,String password){
		User user = (User) userDao.findByUsername(username);
		 if(user != null){
			 return false;
		 }
		 else{
			 User newuser = new User();
			 newuser.setUsername(username);
			 newuser.setPassword(password);
			 newuser.setEmail(password);
			 userDao.save(newuser);
			 return true;
		 }
	}
}

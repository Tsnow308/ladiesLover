package service;

import java.util.List;

import model.User;
import model.UserDAO;

public class UserService {
	
	private UserDAO userDAO;

	public User isValidUser(String username,String password){
		List userList = userDAO.findByUsername(username);
		User user = (User) userList.get(0);
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
		User user = (User) userDAO.findByUsername(username);
		 if(user != null){
			 return false;
		 }
		 else{
			 User newuser = new User();
			 newuser.setUsername(username);
			 newuser.setPassword(password);
			 newuser.setEmail(password);
			 userDAO.save(newuser);
			 return true;
		 }
	}
}

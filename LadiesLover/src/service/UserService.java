package service;

import model.User;
import model.UserDAO;

public class UserService {
	private UserDAO userDao;

	public User isValidUser(String username,String password){
		User user = (User) userDao.findByUsername(username);
		if(user != null && user.getPassword().equalsIgnoreCase(password))
			return user;
		else
			return null;
	}
}

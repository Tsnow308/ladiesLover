package action;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.User;
import service.UserService;

public class UserAction extends ActionSupport{
	private UserService userService;

	private User user;
	private String username;
	private Map<String,Object> session;
	private String password;
	
	public String login() throws Exception{
		User user = userService.isValidUser(username,password);
		if(user!=null){
			session = ActionContext.getContext().getSession();
			session.put("user",user);
			

			return "success";
		}
		else{
			return "error";
		}
	}
	
	public String register() throws Exception{
		boolean result = userService.register(username, password);
		if(result == true){
			return "success";
		}
		else{
			return "error";
		}
		
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}

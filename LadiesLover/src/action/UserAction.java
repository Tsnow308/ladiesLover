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
	private Map<String,Object> result;
	
	public String login() throws Exception{
		result = new HashMap<String,Object>();
		User user = userService.isValidUser(username,password);
		if(user!=null){
			session = ActionContext.getContext().getSession();
			session.put("user",user);
			result.put("success", true);
		}
		else{
			result.put("success", false);
			System.out.println("error...............");
		}
		return "success";
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

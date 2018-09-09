package service;

import java.util.List;

import pojo.User;

public interface UserService {
	
	public List<User> find();
	
	public int add(User u);
}

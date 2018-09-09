package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import pojo.User;
import dao.UserMapper;
import service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper um;
	
	@Override
	public List<User> find() {
		return um.findAll();
	}

	@Override
	public int add(User u) {
		return um.add(u);
	}

}

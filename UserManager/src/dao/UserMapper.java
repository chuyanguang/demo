package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.User;

public interface UserMapper {
	
	public List<User> findAll();
	
	public int add(User u);
}

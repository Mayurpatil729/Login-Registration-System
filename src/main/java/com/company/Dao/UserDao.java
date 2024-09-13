package com.company.Dao;

 

public interface UserDao {
	

	boolean addUser(User user);
	boolean isValidUser(String username, String password);

}

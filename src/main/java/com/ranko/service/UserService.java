package com.ranko.service;

import com.ranko.domain.User;

public interface UserService {

	public User findByEmail(String email);
	
}

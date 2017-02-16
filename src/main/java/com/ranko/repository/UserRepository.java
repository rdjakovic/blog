package com.ranko.repository;

import org.springframework.data.repository.CrudRepository;

import com.ranko.domain.User;

public interface UserRepository extends CrudRepository<User, Long> {

	User findByEmail(String email);
	
}

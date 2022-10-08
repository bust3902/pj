package kr.co.papajohns.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.papajohns.mappers.UserMapper;
import kr.co.papajohns.vo.User;

@Service
public class UserService {

	@Inject
	private UserMapper userMapper;
	
	public User getAllUser() {
		return userMapper.getAllUser();
	}
}

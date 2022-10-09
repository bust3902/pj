package kr.co.papajohns.service;

import javax.inject.Inject;

import kr.co.papajohns.dto.UserForm;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.co.papajohns.mappers.UserMapper;
import kr.co.papajohns.vo.User;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service
@RequiredArgsConstructor
public class UserService {

	SimpleDateFormat format = new SimpleDateFormat( "yyyy-MM-dd");
	Date time = new Date();

	@Inject
	private UserMapper userMapper;
	
	public User findAll() {
		return userMapper.findAll();
	}

	public void insert(User user) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		user.setCreatedDate(format.format(time).toString());

		userMapper.insert(new UserForm(user.getId(), user.getPassword(), user.getName(), user.getEmail(),user.getTel(),
							  user.getPhone(), user.getBirth(), user.getGender(), user.getAuthority(),
							  user.getCreatedDate()));
	}

}

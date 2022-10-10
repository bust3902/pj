package kr.co.papajohns.service;

import kr.co.papajohns.request.UserRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.co.papajohns.mappers.UserMapper;
import kr.co.papajohns.vo.User;

import java.util.Date;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {

	public static final String DATE_FORMATTER = "yyyy-MM-dd";

	private final UserMapper userMapper;

	// 모든 유저 데이터 로드
	public List<User> getAll() {
		return this.userMapper.getAll();
	}
	// ID로 유저 검색
	public User getById(String id) {
		return userMapper.getById(id);
	}


	// 회원가입
	public void create(UserRequest userRequest) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		Date createdDate = new Date();
		String encodePassword = passwordEncoder.encode(userRequest.getPassword());

		User user = User.builder()
				.userRequest(userRequest)
				.encodePassword(encodePassword)
				.createdDate(createdDate)
				.build();

		// SimpleDateFormat format = new SimpleDateFormat( DATE_FORMATTER);

		userMapper.create(user);
	}
}
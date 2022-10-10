package kr.co.papajohns.mappers;

import kr.co.papajohns.vo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 *
 * @author USER
 *
 */
@Mapper
public interface UserMapper {

	// test
	List<User> getAll();
	// 아이디로 사용자 검색
	User getById(String id);
	// 회원가입
	void create(User user);
}

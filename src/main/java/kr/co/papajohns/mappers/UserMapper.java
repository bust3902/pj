package kr.co.papajohns.mappers;

import kr.co.papajohns.dto.UserForm;
import org.apache.ibatis.annotations.Mapper;

import kr.co.papajohns.vo.User;

/**
 *
 * @author USER
 *
 */
@Mapper
public interface UserMapper {

	// test
	User findAll();

	void insert(UserForm userForm);
}

package kr.co.papajohns.mappers;

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
	User getAllUser();
}

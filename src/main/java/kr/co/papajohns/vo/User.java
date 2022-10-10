package kr.co.papajohns.vo;

import java.util.Date;

import kr.co.papajohns.request.UserRequest;
import lombok.Builder;
import lombok.Getter;
import org.springframework.beans.BeanUtils;

/**
 * 사용자 정보
 * @author USER
 *
 */
@Getter
public class User {

	private int no;
	private String id;
	private String password;
	private String name;
	private String email;
	private String tel;
	private String phone;
	private Date birth;
	private String gender;
	private String authority;
	private Date createdDate;

	@Builder
	public User(UserRequest userRequest, String encodePassword, Date createdDate) {
		this.id = userRequest.getId();
		this.birth = userRequest.getBirth();
		this.email = userRequest.getEmail();
		this.gender = userRequest.getGender();
		this.name = userRequest.getName();
		this.password = encodePassword;
		this.phone = userRequest.getPhone();
		this.tel = userRequest.getTel();
		this.createdDate = createdDate;
	}
}

package kr.co.papajohns.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;

/**
 * 사용자 정보
 * @author USER
 *
 */
@Getter
public class User {

	private int userNo;
	private String id;
	private String password;
	private String name;
	private String email;
	private String tel;
	private String phone;
	private Date birth;
	private String gender;
	private String authority;

	public User() {
		
	}
	
	public User(String id, String password, String name, String email,
			String tel, String phone, Date birth, String gender, String authority) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.phone = phone;
		this.birth = birth;
		this.gender = gender;
		this.authority = authority;
	}
	
	public User(int userNo, String id, String password, String name, String email,
				String tel, String phone, Date birth, String gender, String authority) {
		this.userNo = userNo;
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.phone = phone;
		this.birth = birth;
		this.gender = gender;
		this.authority = authority;
	}

}

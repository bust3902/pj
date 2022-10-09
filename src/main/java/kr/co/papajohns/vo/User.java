package kr.co.papajohns.vo;

import java.util.Date;

import lombok.Getter;

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
	private String createdDate;

	public void setPassword(String password) {
		this.password = password;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
}

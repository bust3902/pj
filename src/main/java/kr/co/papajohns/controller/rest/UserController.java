package kr.co.papajohns.controller.rest;

import java.io.IOException;
import java.util.Date;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RestController
@AllArgsConstructor
@CrossOrigin("*")
@RequestMapping("/user")
public class UserController {
	
	// 회원가입 데이터 저장
	@PostMapping(path = "/register")
	@ResponseBody
	public void user(String name, String id, String password, String email, String tel, String phone,
					 Date birth, String gender) throws IOException {
		System.out.println(name + id + password + email + tel + phone + birth + gender);
	}
}

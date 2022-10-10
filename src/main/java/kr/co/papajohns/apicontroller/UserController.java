package kr.co.papajohns.apicontroller;

import java.util.List;

import kr.co.papajohns.request.UserRequest;
import kr.co.papajohns.service.UserService;
import kr.co.papajohns.vo.User;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/user")
@RequiredArgsConstructor
public class UserController {

	private final UserService userService;

	// Test - 모든 유저 정보
	@GetMapping(path = "/all")
	public List<User> getAll() {
		return userService.getAll();
	}
	@GetMapping(path = "/user")
	public User getById(@RequestBody String id) {
		return userService.getById(id);
	}

	@PostMapping("/register")
	public ResponseEntity<Void> create(@RequestBody @Validated UserRequest userRequest) {
		this.userService.create(userRequest);

		return new ResponseEntity<Void>(HttpStatus.CREATED);
	}
}

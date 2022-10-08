package kr.co.papajohns.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import kr.co.papajohns.service.UserService;
import kr.co.papajohns.vo.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Inject
	private UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}

	// Test URI
	@GetMapping(path = "/test")
	public @ResponseBody Map<String, String> jsonTest() {
		Map<String, String> test = new HashMap<>();
		test.put("test", "hello world");

		return test	;
	}

	// Test - 모든 유저 정보
	@GetMapping(path = "/all")
	public @ResponseBody User getAllUser() {
		return userService.getAllUser();
	}

	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String menu() {
		
		return "/menu/menu";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String lgin() {

		return "/login/login";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {

		return "/register/register";
	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart() {

		return "/cart/cart";
	}

}

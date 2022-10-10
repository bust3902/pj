package kr.co.papajohns.webcontroller;

import java.text.DateFormat;
import java.util.*;

import kr.co.papajohns.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
	@GetMapping(path = "/")
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

	@GetMapping(path = "/menu")
	public String menu() {
		return "/menu/menu";
	}

	@GetMapping(path = "/register")
	public String register() {
		return "/register/registerform";
	}

	@GetMapping(path = "/cart")
	public String cart() {
		return "/cart/cart";
	}

	@GetMapping(path = "/notice")
	public String notice() { return "/notice/notice"; }

	@GetMapping(path = "/inquiry")
	public String inquiry() { return "/inquiry/inquiry"; }

	@GetMapping(path = "/findstore")
	public String findstore() { return "/findstore/findstore"; }

}

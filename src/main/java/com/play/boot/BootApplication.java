package com.play.boot;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BootApplication {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public static void main(String[] args) {
		SpringApplication.run(BootApplication.class, args);
	}

	@RequestMapping("/register1")
	public String home() {
		return "index";
	}

	// @RequestMapping(value = "/", method = RequestMethod.GET)
	// public ModelAndView showForm() {
	// return new ModelAndView("takeorder", "order", new OrderVO());
	// }

	@RequestMapping("/")
	public String showForm(Model model) {
		OrderVO order = new OrderVO();
		jdbcTest();
		List<String> menuList = Arrays.asList("1", "2",
				"3");
		model.addAttribute("order", order);
		model.addAttribute("menuList", menuList);

		return "takeorder";
	}

	@PostMapping("/takeorder")
	public String takeOrder(@ModelAttribute("order") OrderVO orderVO) {
		return "ordersuccess";
	}

	private void jdbcTest() {

		List<Map<String, Object>> result = jdbcTemplate
				.queryForList("select * from user_details");

		System.out.println(result);

		result = jdbcTemplate.queryForList("select * from food_menu");

		System.out.println(result);

		result = jdbcTemplate.queryForList("select * from food_order");

		System.out.println(result);
	}
}

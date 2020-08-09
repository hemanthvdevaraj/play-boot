package com.play.boot;

import java.net.URISyntaxException;
import java.util.List;
import java.util.Map;

import javax.jms.Queue;

import org.apache.activemq.command.ActiveMQQueue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jms.annotation.EnableJms;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableJms
@RestController
public class BootApplication {

	@Autowired
	JdbcTemplate jdbc;

	@Bean
	public Queue queue() {
		return new ActiveMQQueue("demo.queue");
	}

	public static void main(String[] args)
			throws URISyntaxException, Exception {
		SpringApplication.run(BootApplication.class, args);
	}

	@RequestMapping(value = "/")
	public String hello() {
		jdbcTest();
		return "Hello World1";
	}

	private void jdbcTest() {

		List<Map<String, Object>> result = jdbc
				.queryForList("select * from user_details");

		System.out.println(result);
	}
}

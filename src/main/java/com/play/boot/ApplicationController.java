package com.play.boot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.play.boot.spring.kafka.SimpleProducer;

@RestController
public class ApplicationController {

	@Autowired
	private SimpleProducer simpleProducer;

	@GetMapping("/register")
	public void register() {
		simpleProducer.sendMessage("hello kafka");
	}

}

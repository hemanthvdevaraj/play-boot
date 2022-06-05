package com.play.boot.spring.kafka;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Component
public class SimpleConsumer {

	@KafkaListener(topics = "playKafkaTopic", groupId = "test")
	public void listenGroupFoo(String message) {
		System.out.println("Received Message in group test: " + message);
	}

}

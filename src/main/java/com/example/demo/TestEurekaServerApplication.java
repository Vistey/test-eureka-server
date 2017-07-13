package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

/**
 * http://blog.didispace.com/spring-cloud-starter-dalston-1/
 *
 * eureka服务段，@EnableEurekaServer启动服务
 */

@EnableEurekaServer
@SpringBootApplication
public class TestEurekaServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(TestEurekaServerApplication.class, args);
	}
}

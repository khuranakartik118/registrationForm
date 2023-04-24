package com.mishaInfotech.registrationFormWebApp.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * @author kartik khurana
 *
 */
@SpringBootApplication
@ComponentScan(basePackages = "com.mishaInfotech.registrationFormWebApp")
@EnableJpaRepositories(basePackages = "com.mishaInfotech.registrationFormWebApp.repository")
@EntityScan(basePackages = "com.mishaInfotech.registrationFormWebApp.entity")
public class RegistrationFormMain {
	public static void main(String[] args) {
		SpringApplication.run(RegistrationFormMain.class, args);
	}
}

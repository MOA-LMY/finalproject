package com.jhta.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ServiceController {
	@RequestMapping("/service")
	public String home() {

		return "service";
	}

}

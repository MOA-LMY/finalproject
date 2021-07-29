package com.jhta.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ElementsController {
	@RequestMapping("/elements")
	public String home() {

		return "elements";
	}
}

package com.jhta.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class SingleblogController {
	@RequestMapping("/singleblog")
	public String home() {

		return "singleblog";
	}

}

package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TakeOrInController {
	@RequestMapping(value = "/takeorin", method = RequestMethod.GET)
	 public void getList() throws Exception {
	 }
}

package com.bitcamp.tp.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bitcamp.tp.MemberInfo.MessageWriteInfo;
import com.bitcamp.tp.Service.MessageService;

@Controller
public class MessageGetMessage {

	@Autowired
	private MessageService service;

	@RequestMapping("/MessageTo/MessageTo")
	public ModelAndView getMessage(@RequestParam("recvId") String recvId, MessageWriteInfo messageWriteInfo) {
		ModelAndView modelAndView = new ModelAndView();
		messageWriteInfo.setRecvId(recvId);
		
		List<MessageWriteInfo> list;
		list = service.getMessage(messageWriteInfo);
		
		modelAndView.addObject("messageInfo", list);
		modelAndView.setViewName("MessageTo/MessageTo");
		return modelAndView;
	}
}

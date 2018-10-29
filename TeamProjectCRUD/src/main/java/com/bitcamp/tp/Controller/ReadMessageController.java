package com.bitcamp.tp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bitcamp.tp.MemberInfo.MessageWriteInfo;
import com.bitcamp.tp.Service.MessageService;

@Controller
@RequestMapping("/ReadMessage")
public class ReadMessageController {
	@Autowired
	private MessageService service;

	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int readMessage(String messageNum) {
		MessageWriteInfo messageWriteInfo = new MessageWriteInfo();
		messageWriteInfo.setMessageNum(messageNum);
		return service.changeCheckMessage(messageWriteInfo);
	}
}

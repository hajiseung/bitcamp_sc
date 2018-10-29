package com.bitcamp.tp.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.bitcamp.tp.MemberDao.MemberDao;
import com.bitcamp.tp.MemberInfo.MessageWriteInfo;

public class MessageService {

	@Autowired
	private MemberDao memberDao;

	public int goMessageTo(MessageWriteInfo messageWriteInfo) {
		return memberDao.insertMessage(messageWriteInfo);
	}

	public List<MessageWriteInfo> getMessage(MessageWriteInfo messageWriteInfo) {
		return memberDao.getMessage(messageWriteInfo);
	}

	public MessageWriteInfo getCntMessage(MessageWriteInfo messageWriteInfo) {
		MessageWriteInfo resultInfo = memberDao.getCntMessage(messageWriteInfo);
		if (resultInfo.getRecvId() == null) {
			resultInfo.setRecvId(messageWriteInfo.getRecvId());
			resultInfo.setCount(0);
		}
		return resultInfo;

	}

	public int changeCheckMessage(MessageWriteInfo messageWriteInfo) {
		return memberDao.changeCheckMessage(messageWriteInfo);
	}

}

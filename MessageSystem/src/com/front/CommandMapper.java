package com.front;

import java.util.HashMap;

import com.member.JoinService;
import com.member.LoginService;
import com.member.LogoutService;
import com.message.MessageDelectService;
import com.message.MessageDeleteAllService;
import com.message.MessageInsertService;
import com.message.UpdateService;

public class CommandMapper {
	public static HashMap<String, CommandService> getMap() {
		HashMap<String, CommandService> map = new HashMap<String, CommandService>();
		
		map.put("Login.do", new LoginService());
		map.put("Join.do", new JoinService());
		map.put("Logout.do", new LogoutService());
		map.put("Update.do", new UpdateService());
		map.put("MessageInsertService.do", new MessageInsertService());
		map.put("MessageDeleteAllService.do", new MessageDeleteAllService());
		map.put("MessageDelectService.do", new MessageDelectService());
		
		return map;
	}
}

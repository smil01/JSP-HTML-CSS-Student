package com.message;

import java.sql.Date;

public class MessageDTO {
	private int num;
	private String send_name;
	private String recevie_email;
	private String content;
	private String day;

	public MessageDTO(int num, String send_name, String recevie_email, String content, String day) {
		super();
		this.num = num;
		this.send_name = send_name;
		this.recevie_email = recevie_email;
		this.content = content;
		this.day = day;
	}

	public MessageDTO(String send_name, String recevie_email, String content) {
		this.send_name = send_name;
		this.recevie_email = recevie_email;
		this.content = content;
	}
	
	public MessageDTO(String recevie_email) {
		this.recevie_email = recevie_email;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSend_name() {
		return send_name;
	}

	public void setSend_name(String send_name) {
		this.send_name = send_name;
	}

	public String getRecevie_email() {
		return recevie_email;
	}

	public void setRecevie_email(String recevie_email) {
		this.recevie_email = recevie_email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	@Override
	public String toString() {
		return "MessageDTO [num=" + num + ", send_name=" + send_name + ", recevie_email=" + recevie_email + ", content="
				+ content + ", day=" + day + "]";
	}

}

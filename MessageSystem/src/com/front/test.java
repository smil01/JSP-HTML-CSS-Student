package com.front;

import java.util.HashMap;
import java.util.Scanner;

public class test {
	public static void main(String[] args) {
		HashMap<String, String> map = new HashMap<String, String>();

		map.put("사과", "1000원");
		map.put("포도", "2000원");
		map.put("배", "3000원");
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("사과 포도 배 중 가격을 입력하세요 : ");
		String input = scanner.next();
		
		System.out.println(map.get(input));
	}
}

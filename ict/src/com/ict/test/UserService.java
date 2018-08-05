package com.ict.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class UserService {

	private static UserService us;
	private List<HashMap<String, String>> usList;

	public static UserService getUS() {
		if (us == null) {
			us = new UserService();
		}
		return us;
	}

	public List<HashMap<String, String>> getUserList() {
		if (usList == null) {
			usList = new ArrayList<HashMap<String, String>>();

			for (int i = 1; i < 11; i++) {
				HashMap<String, String> hm = new HashMap<String, String>();
				int rAge = (int) (Math.random() * 100);
				hm.put("name", "강미누" + i);
				hm.put("age", rAge + "");
				hm.put("id", "violet" + i);
				hm.put("address", "제" + rAge + "지구");

				usList.add(hm);
			}
		}
		return usList;
	}
	
	public List<HashMap<String, String>> getUserList(String sch) {
		if (usList == null || sch==null) {
			return getUserList();
		}
		
			List<HashMap<String,String>> UL = getUserList();
			List<HashMap<String,String>> UL2 = new ArrayList<HashMap<String,String>>();
			
			for(HashMap<String,String> hm : UL) {
				if(hm.get("age").indexOf(sch) != -1) {
					UL2.add(hm);
				}
			}
		
		return UL2;
	}

}

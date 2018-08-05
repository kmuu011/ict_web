package com.ict.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

public class DepartService {

	private static DepartService ds;
	private List<HashMap<String, String>> departList;

	public static DepartService getDepartService() {
		if (ds == null) {
			ds = new DepartService();
		}
		return ds;
	}

	public List<HashMap<String, String>> getUL() {
		if (departList == null) {
			departList = new ArrayList<HashMap<String, String>>();

			for (int i = 0; i < 30; i++) {
				HashMap<String, String> hm = new HashMap<String, String>();

				int mem = (int) (Math.random() * 30) + 1;
				int code = (int) (Math.random() * 30) + 1;

				 String ss = StringUtils.leftPad(code+"", 3,"0");

				hm.put("DN", "ºÎ¼­" + (i + 1));
				hm.put("DC", ss + "");
				hm.put("DM", mem + "");

				departList.add(hm);
			}
		}

		return departList;
	}

	public List<HashMap<String, String>> getUL(String[] types, String searchStr) {
		if (searchStr == null || departList == null) {
			return getUL();
		}

		List<HashMap<String, String>> departList = getUL();
		List<HashMap<String, String>> departList2 = new ArrayList<HashMap<String, String>>();

		for (HashMap<String, String> hm : departList) {
			for (String type : types) {
				if (hm.get(type).indexOf(searchStr) != -1) {
					if (departList2.indexOf(hm) ==-1) {
						departList2.add(hm);
					}
				}
			}
		}
		return departList2;
	}

}

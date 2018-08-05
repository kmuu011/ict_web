package com.ict.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class GradeService {
	public static List<HashMap<String,String>> stuList;
	
	public List<HashMap<String,String>> getStuInfo(){
		if(stuList ==null) {
			stuList = new ArrayList<HashMap<String,String>>();
		}
		
		for(int i=0 ; i<10 ; i++) {
			HashMap<String,String> st = new HashMap<String,String>();
			
			int age = (int)(Math.random()*10)+10;
			int grade = (int)(Math.random()*12)+1;
			
			st.put("name", "ÇĞ»ı" +(1+i));
			st.put("age", age+"");
			st.put("grade", grade+"");
			
			stuList.add(st);
		
		}
		return stuList;
		
	}

}

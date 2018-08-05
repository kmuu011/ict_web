package com.ict.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class CarService {
	private static CarService cs;
	private List<HashMap<String,String>> carList;
	
	public static CarService getCS() {
		if(cs == null) {
			cs = new CarService();
		}
		return cs;
	}

	public List<HashMap<String,String>> getCarList(){
		if(carList == null) {
			carList = new ArrayList<HashMap<String,String>>();
		}
		
		for(int i=0 ; i<10 ; i++) {
			HashMap<String,String> carInfo = new HashMap<String,String>();
			
			int p = (int)(Math.random()*1000)+1;
			
			carInfo.put("name", "BMW" + (i+1));
			carInfo.put("price", (i+1000)*p +"¿ø");
			carInfo.put("brand" , "BMW");
			
			carList.add(carInfo);
		}
		
		return carList;
	}
	
	

}

package com.ict.test.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Process {
	
	Connection con;
	

	List<Map<String,String>> carList = new ArrayList<Map<String,String>>();
	
	public List<Map<String,String>> getCarList() {
			this.con = DBCon.getCon();

			String sql = "select carNo, carName, carPrice, carVendor from car";
			
			try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			Map<String,String> car;
			
			while(rs.next()) {
				car = new HashMap<String,String>();
				car.put("name", rs.getString("carName"));
				car.put("price", rs.getString("carPrice"));
				car.put("vendor", rs.getString("carVendor"));
				carList.add(car);
			}
			
			}catch(SQLException e){
				e.printStackTrace();
				
			} finally{
				DBCon.closeCon();
			}
		
		return carList;

	}
	
	public List<Map<String,String>> getCarList(String search, String op) {
		if(carList == null || search == null) {
			return getCarList();
		}
		
		List<Map<String,String>> carList = getCarList(); 
		List<Map<String,String>> si = new ArrayList<Map<String,String>>();
	
		for(Map<String,String> car : carList) {
			if(car.get(op).indexOf(search)!= -1) {
				si.add(car);
			}
		}
		
		System.out.println(si.size());
		return si;
	}
	
}

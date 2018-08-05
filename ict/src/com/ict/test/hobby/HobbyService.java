package com.ict.test.hobby;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HobbyService {
	
	private Connection con;
	
	List<Map<String,String>> uList; 
	
	public int signup(String name, String age, String adr, String hob, String etc) {
		this.con = DBCon.getCon();
		int result = -1;
		
		String sql = "insert into users values "
				+ "(uno_seq.nextval, ?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, age);
			ps.setString(3, adr);
			ps.setString(4, hob);
			ps.setString(5, etc);
			
			result = ps.executeUpdate();
			
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBCon.closeCon();
		}
		return -1;
	}
	
	public List<Map<String,String>> getList(){
		uList = new ArrayList<Map<String,String>>();
		this.con = DBCon.getCon();
		
		String sql = "select * from users order by unum";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Map<String,String> hm = new HashMap<String,String>();
				hm.put("name", rs.getString("uname"));
				hm.put("age", rs.getString("uage"));
				hm.put("adr", rs.getString("uadr"));
				hm.put("hob", rs.getString("uhobby"));
				hm.put("etc", rs.getString("uetc"));
				uList.add(hm);
			}
			return uList;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBCon.closeCon();
		}
		return uList;
	}
	
	public List<Map<String,String>> getList(String op, String search){
		uList = new ArrayList<Map<String,String>>();
		this.con = DBCon.getCon();
		
		if(op==null || search.trim().length() ==0) {
			return getList();
		}
		String o = op;
		
		String sql = "select * from users where " + o + " like '%' || ? || '%' order by unum";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, search);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				HashMap<String,String> hm = new HashMap<String,String>();
				hm.put("name", rs.getString("uname"));
				hm.put("age", rs.getString("uage"));
				hm.put("adr", rs.getString("uadr"));
				hm.put("hob", rs.getString("uhobby"));
				hm.put("etc", rs.getString("uetc"));
				uList.add(hm);
			}
			return uList;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBCon.closeCon();
		}
		return uList;
	}
	
	public List<Map<String,String>> getList(String ch){
		uList = new ArrayList<Map<String,String>>();
		this.con = DBCon.getCon();
		
		if(ch ==null) {
			return getList();
		}
		
		String sql = "select * from users where uname=?";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ch);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Map<String,String> ui = new HashMap<String,String>();
				
				ui.put("name", rs.getString("uname"));
				ui.put("age", rs.getString("uage"));
				ui.put("adr", rs.getString("uadr"));
				ui.put("hob", rs.getString("uhobby"));
				ui.put("etc", rs.getString("uetc"));
				uList.add(ui);
			}
			return uList;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBCon.closeCon();
		}

		return uList;
	}
	
	public int modify(String name, String age, String adr, String hob, String etc, String user) {
		this.con = DBCon.getCon();
		int result = -1;
		
		String sql = "update users set uname=?, uage=?, uadr=?, uhobby=?, uetc=? where uname=?";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, age);
			ps.setString(3, adr);
			ps.setString(4, hob);
			ps.setString(5, etc);
			ps.setString(6, user);
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBCon.closeCon();
		}
		return result;
	}
	
	public int delete(String user) {
		this.con = DBCon.getCon();
		int result = -1;
		
		String sql = "delete from users where uname = ?";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user);
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		return result;
		
	}
	

}

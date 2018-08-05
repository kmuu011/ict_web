package com.ict.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class PcService {
	private static PcService ps;
	private List<HashMap<String,String>> PCInfoList;
	
	public static PcService getPS() {
		if(ps==null) {
			ps = new PcService();
		}
		return ps;
	}
	
	public List<HashMap<String,String>> getPC(){
		if(PCInfoList == null) {
			PCInfoList = new ArrayList<HashMap<String,String>>();
			
			for(int i=0  ; i<30 ; i++) {
				HashMap<String,String> PCInfo = new HashMap<String,String>();
				
				int cpu = ((int)((Math.random()*3)+1))*2+1;
				int ram = ((int)(Math.random()*4)+1)*8;
				int gpu = ((int)(Math.random()*5)+7);
				
				PCInfo.put("CPU", "i"+cpu);
				PCInfo.put("RAM", ram+"GB");
				PCInfo.put("GPU", gpu+"80Ti");
				
				PCInfoList.add(PCInfo);
			}
		}
		return PCInfoList;
	}
	
	public List<HashMap<String,String>> getPC(String search, String op){
		if(PCInfoList == null || search==null) {
			getPC();
		}
		
		List<HashMap<String,String>> PCInfo = getPC();
		List<HashMap<String,String>> ss = new ArrayList<HashMap<String,String>>();
		
		for(HashMap<String,String> pc : PCInfo) {
			if(pc.get(op).indexOf(search) != -1) {
				ss.add(pc);
			}
		}
		
		return ss;
	}
	

}

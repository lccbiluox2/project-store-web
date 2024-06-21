package com.biluo.common;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;



import com.biluo.domain.MyOrder;

public class ListToText {
		
	public static void listToText(List list, String path,String fileName){
		
		System.out.println("path"+path);
		System.out.println("fileName"+fileName);
		
		File file = new File(fileName+".txt");
		FileOutputStream os = null;
		try {
			 os = new FileOutputStream(file);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		for(int i =0 ;i < list.size() ;i++){
			
		}
		
		
		
	}
	
}

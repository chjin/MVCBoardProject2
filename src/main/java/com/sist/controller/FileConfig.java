package com.sist.controller;
/*
 *  Tmocat => web.xml
 *  DispatcherServlet이 메모리 할당
 */
//package.className
import java.util.*;
import java.io.*;
public class FileConfig {
	public static List<String> getFileName(String pack){
		List<String> list=new ArrayList<String>();
		try{
			String path="C:\\springDev\\springStudy\\MVCBoardProject1\\src\\main\\java\\";
			path=path+pack.replace('.', '\\');
			File dir=new File(path);
			File[] files=dir.listFiles();
			for(File f:files){
				if(f.isFile()){
					String name=f.getName();
					String ext=name.substring(name.lastIndexOf('.')+1);
					if(ext.equals("java")){
						// com.sist.board.BoardController
						String ff=pack+"."+name.substring(0, name.lastIndexOf('.'));
						list.add(ff);
					}
				}
			}
		}catch(Exception ex){}
		return list;
	}
}

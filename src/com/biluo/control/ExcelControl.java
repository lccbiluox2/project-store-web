package com.biluo.control;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biluo.service.ExcelService;

@Controller
public class ExcelControl {
	
	@Resource
	private ExcelService excelService;
	
	 /** 
     * 导出excel报表 
	 * @param request 
     */  
    @RequestMapping("printAllUser")  
    public void printAllUser(HttpServletResponse response, HttpServletRequest request) {  
    	//得到项目的目录
		String path = request.getSession().getServletContext().getRealPath("excel");
    	excelService.printAllUser(response,path);  
    }  
	
    @RequestMapping("printAllOrder")  
    public void printAllOrder(HttpServletResponse response, HttpServletRequest request) {  
    	//得到项目的目录
		String path = request.getSession().getServletContext().getRealPath("excel");
    	excelService.printAllOrder(response,path);  
    }  
    
    
    
    @RequestMapping("printAllUserToText")  
    public void printAllUserToText(HttpServletResponse response, HttpServletRequest request) {  
    	//得到项目的目录
		String path = request.getSession().getServletContext().getRealPath("excel");
    	excelService.printAllUserToText(response,path); 
    	
    	  String path2 =request.getSession().getServletContext().getRealPath("/excel/user.txt");//获取文件的相对路径  
          String filename = path2.substring(path2.lastIndexOf("\\")+1);//获取文件名称，在转化为子串  
          //response.setHeader告诉浏览器以什么方式打开  
          //假如文件名称是中文则要使用 URLEncoder.encode()编码  
          //否则直接使用response.setHeader("content-disposition", "attachment;filename=" + filename);即可  
          try {
			response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(filename, "UTF-8"));
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}  
            
          InputStream in = null ;  
          OutputStream out = null ;  
          try  
          {  
             in = new FileInputStream(path2); //获取文件的流  
             int len = 0;  
             byte buf[] = new byte[1024];//缓存作用  
             out = response.getOutputStream();//输出流  
             while( (len = in.read(buf)) > 0 ) //切忌这后面不能加 分号 ”;“  
             {  
                 out.write(buf, 0, len);//向客户端输出，实际是把数据存放在response中，然后web服务器再去response中读取  
             }  
          }catch(Exception e){  
              e.printStackTrace();  
          }finally  
          {  
              if(in!=null)  
              {  
                try{                
                    in.close();  
                }catch(IOException e){  
                   e.printStackTrace();  
                 }  
              }  
                
              if(out!=null)  
              {  
                 try{  
                     out.close();  
                 }catch(IOException e){  
                     e.printStackTrace();  
                  }  
               }  
           }  
            
    
    	
    }  
	
    
    @RequestMapping("printAllOrderToText")  
    public void printAllOrderToText(HttpServletResponse response, HttpServletRequest request) {  
    	//得到项目的目录
		String path = request.getSession().getServletContext().getRealPath("excel");
    	excelService.printAllOrderToText(path);  
    	
    	
    	  String path2 =request.getSession().getServletContext().getRealPath("/excel/order.txt");//获取文件的相对路径  
          String filename = path2.substring(path2.lastIndexOf("\\")+1);//获取文件名称，在转化为子串  
          //response.setHeader告诉浏览器以什么方式打开  
          //假如文件名称是中文则要使用 URLEncoder.encode()编码  
          //否则直接使用response.setHeader("content-disposition", "attachment;filename=" + filename);即可  
          try {
			response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(filename, "UTF-8"));
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}  
            
          InputStream in = null ;  
          OutputStream out = null ;  
          try  
          {  
             in = new FileInputStream(path2); //获取文件的流  
             int len = 0;  
             byte buf[] = new byte[1024];//缓存作用  
             out = response.getOutputStream();//输出流  
             while( (len = in.read(buf)) > 0 ) //切忌这后面不能加 分号 ”;“  
             {  
                 out.write(buf, 0, len);//向客户端输出，实际是把数据存放在response中，然后web服务器再去response中读取  
             }  
          }catch(Exception e){  
              e.printStackTrace();  
          }finally  
          {  
              if(in!=null)  
              {  
                try{                
                    in.close();  
                }catch(IOException e){  
                   e.printStackTrace();  
                 }  
              }  
                
              if(out!=null)  
              {  
                 try{  
                     out.close();  
                 }catch(IOException e){  
                     e.printStackTrace();  
                  }  
               }  
           }  
            
    	
    }  
}

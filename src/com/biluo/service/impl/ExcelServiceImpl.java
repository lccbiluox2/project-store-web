package com.biluo.service.impl;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.biluo.common.ExportExcel;
import com.biluo.common.ListToText;
import com.biluo.dao.ExcelDao;
import com.biluo.domain.MyOrder;
import com.biluo.domain.User;
import com.biluo.service.ExcelService;

@Service
@Transactional
public class ExcelServiceImpl implements ExcelService {

	
	@Resource
	private ExcelDao excelDao;
	
	@Override
	public void printAllUser(HttpServletResponse response,String path) {
		// TODO Auto-generated method stub
		ExportExcel<User> ex = new ExportExcel<User>();
		List<User> dataset = excelDao.getAllUser();
		String[] headers = { "用户ID","姓名","用户密码","手机号", "email", "地址" };
		try {
            
			String path2 = path +"/user.xls";
			System.out.println(path2);
            OutputStream out = new FileOutputStream(path2);
           
            //ex.exportExcel(headers, dataset, out,"ceshi","yyyy-MM-dd");
            ex.exportExcel(headers, dataset, out);
            out.close();
            JOptionPane.showMessageDialog(null, "导出成功!");
            System.out.println("excel导出成功！");
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}

	@Override
	public void printAllOrder(HttpServletResponse response, String path) {
		ExportExcel<MyOrder> ex = new ExportExcel<MyOrder>();
		List<MyOrder> dataset = excelDao.getAllMyOrder();
		String[] headers = { 
				"订单ID",
				"订单号",
				"商品编号",
				"商品ID", 
				"商品图片", 
				"品牌图片" ,
				"商品VIP price" ,
				"商品数量" ,
				"总费用" ,
				"下单人ID" ,
				"下单人ID姓名" ,
				"支付方式" ,
				"运费" ,
				"状态" ,
				"下单时间" 
				
		};

		
		try {
            
			String path2 = path +"/myorder.xls";
			System.out.println(path2);
            OutputStream out = new FileOutputStream(path2);
           
            //ex.exportExcel(headers, dataset, out,"ceshi","yyyy-MM-dd");
            ex.exportExcel(headers, dataset, out);
            out.close();
            JOptionPane.showMessageDialog(null, "导出成功!");
            System.out.println("excel导出成功！");
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}

	@Override
	public void printAllUserToText(HttpServletResponse response, String path) {
		// TODO Auto-generated method stub
		
		List<User> userlist = excelDao.getAllUser();
		System.out.println("path="+path);
		//File file = new File(path+"/"+"user.txt");
		File file = new File(path+"/"+"user.txt");
		FileWriter os = null;
		try {
			 os = new FileWriter(file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
		for (User user : userlist) {
			//System.out.println(myOrder.toString());
			String line = user.toString();
			try {
				os.write(line+"\r\n");
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		try {
			os.flush();
			os.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	@Override
	public void printAllOrderToText(String path) {
		// TODO Auto-generated method stub
		List<MyOrder> listOrder = excelDao.getAllOrder();
		System.out.println("path="+path);
		File file = new File(path+"/"+"order.txt");
		FileWriter os = null;
		try {
			 os = new FileWriter(file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
		for (MyOrder myOrder : listOrder) {
			//System.out.println(myOrder.toString());
			String line = myOrder.toString();
			try {
				os.write(line+"\r\n");
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		try {
			os.flush();
			os.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}


	

}

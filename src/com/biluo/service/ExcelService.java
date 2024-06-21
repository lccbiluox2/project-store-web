package com.biluo.service;

import javax.servlet.http.HttpServletResponse;

public interface ExcelService {



	void printAllUser(HttpServletResponse response,String path);

	void printAllOrder(HttpServletResponse response, String path);

	void printAllUserToText(HttpServletResponse response, String path);

	void printAllOrderToText(String path);
	
}

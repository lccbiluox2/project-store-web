package com.biluo.control;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biluo.common.UploadImgToPointDir;
import com.biluo.domain.CartBean;
import com.biluo.domain.MyOrder;
import com.biluo.domain.PageBean;
import com.biluo.service.BeanControlService;
import com.biluo.service.OrderService;

@Controller
public class OrderControl {
	
	
	
	@Resource
	private OrderService orderService;
	
	
	int currentPage = 1;//页面默认是第一页2016/5/25
	int mypagesize = 5;//默认页面显示几条数据
	
	
	//添加订单
	@RequestMapping("/addOrder")
	public ModelAndView addOrder(MyOrder order){
		System.out.println("添加订单");
		
		System.out.println(order.getP_id());
		System.out.println(order.getO_number());
		System.out.println(order.getP_img_path());
		System.out.println(order.getB_img_path());
		System.out.println(order.getP_vip_price());
		System.out.println(order.getO_count());
		System.out.println(order.getU_id());
		System.out.println(order.getU_name());
		System.out.println(order.getCart_id());
	
		String o_time = UploadImgToPointDir.getDateNow();
		
		order.setO_time(o_time);
		
		
		boolean flag  = orderService.addOrder(order);
		
		System.out.println("删除已经加入订单的购物车"+order.getCart_id());
		//删除已经加入订单的购物车
		boolean flag2  = orderService.delCartByCart_id(order.getCart_id());
		/*ModelAndView mav = new ModelAndView();
		mav.addObject("cartList", cartList);
		mav.setViewName("index/user_cart");
		return mav;*/
		return null;
	}
	
	
	
	//得到订单里面的东西 并且跳转显示
	@RequestMapping("/goAndShowUserOrder")
	public ModelAndView goAndShowUserOrder(String  u_id,int currentPage,HttpServletRequest request){
		System.out.println("得到购物车里面的东西 并且跳转显示"+u_id);
		
		PageBean pageBean = orderService.goAndShowUserOrder(u_id,  currentPage,  mypagesize);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageBean", pageBean);
		mav.setViewName("index/user_order");
	
		return mav;
	
	}
		
	
	//管理员查看所有订单
	@RequestMapping("/goAndShowAllUserOrder")
	public ModelAndView goAndShowAllUserOrder(int currentPage,HttpServletRequest request){
		
		
		PageBean pageBean = orderService.goAndShowAllUserOrder(currentPage,  mypagesize);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageBean", pageBean);
		mav.setViewName("admin/order/orderManagePage");
	
		return mav;
	
	}
	
	//查看所有未受理的订单
	@RequestMapping("/goAndShowAllUserOrderState1")
	public ModelAndView goAndShowAllUserOrderState1(int currentPage,HttpServletRequest request){
		
		
		PageBean pageBean = orderService.goAndShowAllUserOrderState1(currentPage,  mypagesize);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageBean", pageBean);
		mav.setViewName("admin/order/orderManagePage");
	
		return mav;
	
	}
	
	
	
	//受理订单
	@RequestMapping("/updateOrderState")
	public String  updateOrderState(String o_id){
		
		boolean pageBean = orderService.updateOrderState(o_id);
		return "redirect:/goAndShowAllUserOrder?currentPage=1";
	
	}
	
	//打印所有未受理的订单
	@RequestMapping("printAllOrderToTextState1")  
    public void printAllOrderToTextState1(HttpServletResponse response, HttpServletRequest request) {  
    	//得到项目的目录
		String path = request.getSession().getServletContext().getRealPath("excel");
		orderService.printAllOrderToTextState1(path);  
    	
    	
    	  String path2 =request.getSession().getServletContext().getRealPath("/excel/orderState1.txt");//获取文件的相对路径  
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
	
	
	//一键受理所有未受理的订单
	@RequestMapping("/updateAllOrderStateTo2")
	public String  updateAllOrderStateTo2(){
		
		boolean pageBean = orderService.updateAllOrderStateTo2();
		return "redirect:/goAndShowAllUserOrder?currentPage=1";
	
	}
	
	
}

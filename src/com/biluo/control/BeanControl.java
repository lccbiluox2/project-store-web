package com.biluo.control;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.Flags.Flag;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.biluo.bean.CookBean;
import com.biluo.domain.CartBean;
import com.biluo.domain.Category;
import com.biluo.domain.User;
import com.biluo.service.BeanControlService;

@Controller
public class BeanControl {
	
	
	@Resource
	private BeanControlService beanControlService;
	
	
	
	
	
	//ajax用户登陆
	@RequestMapping("getUserIndex")
	public ModelAndView getUserIndex(HttpServletRequest request,
			ServletResponse response){
		String  username = request.getParameter("txtName");
		String  userPasswd = request.getParameter("txtPass");
		User user = beanControlService.getUser(username,userPasswd);
		
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		/*System.out.println("--user--"+user.getU_name()); 
		System.out.println("--user--"+user.getU_passwd()); 
		System.out.println("--user--"+user.getU_id()); */
		
		List<String> u = new ArrayList<String>() ;
		if(user != null){
			u.add(user.getU_name());
			u.add(user.getU_passwd());
			u.add(user.getU_id()+"");
			
			//定义Beanid - 给将要应用bean的变量一个名字，(这里我们设置的是mycookie)
			//如果发现有相同id和scope的bean对象，则应用此对象而不会产生一个新的例示
			//。scope - 表明了此bean的作用范围，共有四个值：page, request, session, 和 application
			//，缺省的是page属性，表明此bean只能应用于当前页（保存在当前页的PageContext 中）；
			//request属性表明此bean只能应用于当前的用户请求中（保存在ServletRequest对象中）；
			//session属性表明此bean能应用于当前HttpSession生命周期内的所有页面；
			//application属性值则表明此bean能应用于共享ServletContext的所有页面
			//。需要注意的是，当没有具有相同的id和scope对象时，
			//一个jsp:useBean 实体只能作用于一个新的例示中，反之，则作用于以前的对象，
			//这时，在jsp:useBean标签之间的任何jsp:setParameter和其它实体都将被忽略。
			//class - 指明了bean的整个包名
			//设置CookBean
			/*CookBean mycookie = new CookBean();
			mycookie.setU_id(user.getU_id()+"");
			mycookie.setU_id(user.getU_name());
			request.getSession().setAttribute("mycookie", mycookie);*/
			/*System.out.println("--user--"+user.getU_name()); 
			System.out.println("--user--"+user.getU_passwd()); 
			System.out.println("--user--"+user.getU_id()); */
			String s = JSONArray.fromObject(u).toString();
			out.print(s);
			out.close();
			return null;
		}else{
			u.add("none");
			u.add("none");
			u.add("none");
			String s = JSONArray.fromObject(u).toString();
			out.print(s);
			out.close();
			return null;
		}
		
		
	}
	
	@RequestMapping("/addProductToMyCart")
	public String addProductToMyCart(CartBean cartBean,HttpServletRequest request,
			ServletResponse response,RedirectAttributes attr){
		System.out.println("处理用户加入购物车事件------");
		/*String  myp_img_path = request.getParameter("myp_img_path");
		String  myp_id = request.getParameter("myp_id");
		String  mycount = request.getParameter("mycount");
		String  myb_img_path = request.getParameter("myb_img_path");
		String  myu_id = request.getParameter("myu_id");
		String  myu_name = request.getParameter("myu_name");
		String  myp_number = request.getParameter("myp_number");
		String  myproduct_p_vip_price = request.getParameter("myproduct_p_vip_price");
	*/

		
		
		System.out.println(cartBean.getB_img_path());
		System.out.println(cartBean.getP_count());
	
		System.out.println(cartBean.getP_id());
		System.out.println(cartBean.getP_img_path());
		System.out.println(cartBean.getP_number());
		System.out.println(cartBean.getP_vip_price());
		System.out.println(cartBean.getU_id());
		System.out.println(cartBean.getU_name());

		
		boolean flag = beanControlService.addProductToCart(cartBean);
		
		attr.addAttribute("u_id", cartBean.getU_id());
		return "redirect:/goAndShowUserCart";
		
	
	}
	
	//处理用户加入购物车事件
	/*@RequestMapping("/addProductToMyCart")
	public ModelAndView addProductToMyCart(HttpServletRequest request,
			ServletResponse response){
		System.out.println("处理用户加入购物车事件------");
		String  myp_img_path = request.getParameter("myp_img_path");
		String  myp_id = request.getParameter("myp_id");
		String  mycount = request.getParameter("mycount");
		String  myb_img_path = request.getParameter("myb_img_path");
		String  myu_id = request.getParameter("myu_id");
		String  myu_name = request.getParameter("myu_name");
		String  myp_number = request.getParameter("myp_number");
		String  myproduct_p_vip_price = request.getParameter("myproduct_p_vip_price");
	

		
		
		System.out.println(myp_img_path);
		System.out.println(myp_id);
	
		System.out.println(mycount);
		System.out.println(myb_img_path);
		System.out.println(myu_id);
		System.out.println(myu_name);
	
		CartBean cartBean = new CartBean(myp_img_path, myp_id, mycount, myb_img_path, myu_id, myu_name,myp_number,myproduct_p_vip_price);
		
		
		boolean flag = beanControlService.addProductToCart(cartBean);
		List<String> u = new ArrayList<String>() ;
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(flag){
			u.add("1");//添加成功
		}else{
			u.add("0");//添加失败
		}
		
		String s = JSONArray.fromObject(u).toString();
		out.print(s);
		out.close();
		return null;
		
	
	}
	*/
	
	
	//得到购物车里面的东西 并且跳转显示
	@RequestMapping("/goAndShowUserCart")
	public ModelAndView goAndShowUserCart(String  u_id){
		System.out.println("得到购物车里面的东西 并且跳转显示"+u_id);
		
		List<CartBean> cartList = beanControlService.goAndShowUserCart(u_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("cartList", cartList);
		mav.setViewName("index/user_cart");
		return mav;
	
	}
	
	
	//删除购物车里面的商品  ajax操作
	
	@RequestMapping("/delCartById")
	public ModelAndView delCartById(HttpServletRequest request,
			ServletResponse response){
		System.out.println("删除购物车事件------");
		String  cart_id = request.getParameter("cart_id");
		System.out.println("删除购物车事件------"+cart_id);
		boolean flag = beanControlService.delCartById(new Integer(cart_id));
		List<String> u = new ArrayList<String>() ;
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(flag){
			u.add("1");//添加成功
		}else{
			u.add("0");//添加失败
		}
		
		String s = JSONArray.fromObject(u).toString();
		out.print(s);
		out.close();
		return null;
	
	}
	
	
	
}

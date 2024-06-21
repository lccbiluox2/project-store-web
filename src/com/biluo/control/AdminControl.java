package com.biluo.control;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.biluo.common.TreeShow;
import com.biluo.common.UploadImgToPointDir;
import com.biluo.domain.Admin;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.Product;
import com.biluo.domain.User;
import com.biluo.service.AdminService;

@Controller
public class AdminControl {
	

	
	
	@Resource
	private AdminService adminService;
	int myoffset = 0;//页面默认是第一页
	int mypagesize = 3;//默认页面显示几条数据
	//管理员登录
	@RequestMapping("/getAdmin")
	public String getAdmin(Admin admin){
		Admin adm = adminService.getAdmin(admin);
		return "admin/success";	
	}
	
	
	/******************用户处理************************************************/
	
	//用户登录
	@RequestMapping("/getUser")
	public String getUser(User user) {
		System.out.println(user.getU_name() + user.getU_passwd());
		boolean flag = adminService.getUser(user);

		if (!flag) {
			return "index/user_login";	
		} else {
			return "index/index";	
		}
			
	}
	
	//删除用户 ,根据用户id删除用户
	@RequestMapping("/delUserById")
	public String delUserById(String id,RedirectAttributes attr){
		System.out.println("-------------id------"+id);
		boolean flag = adminService.delUserById(id);
		if(flag){
			attr.addAttribute("offset", 1);
			attr.addAttribute("orientation", 1);
			return "redirect:/userManage";//这里有些不同，这里是跳转到这个control的另外一个方法
		}else{
			attr.addAttribute("offset", 1);
			attr.addAttribute("orientation", 1);
			return "redirect:/userManage";//这里有些不同，这里是跳转到这个control的另外一个方法
		}
		
	}
	
	//用户注册
	@RequestMapping("/addUserRegister")
	public String addUserRegister(User user){
		if(user.getU_name() != null && user.getU_passwd() != null){
			boolean  flag = adminService.addUserRegister(user);
			if(flag){
				return "index/index";	
			}
		}
		return "user_login";	
	}
	
	
	//商标管理主页面
	//offset 是默认显示第几页   toPage是跳转到哪一页
	@RequestMapping("userManage")
	public String getAllUser(HttpServletRequest request,int offset,int orientation,RedirectAttributes attr){
			
		int brandCount = adminService.getAllUserCount();
		int pageTo = brandCount%mypagesize==0?brandCount/mypagesize:brandCount/mypagesize+1;
		//orientation  1代表下一页   2，代表上一页 3 首页  4尾页
		if(orientation == 1 ){
			if(myoffset + offset <= pageTo)
				myoffset= myoffset+offset;
				else{
					myoffset = pageTo;
				}
			}else if(orientation == 2){
				if(myoffset - offset >= 0)
				myoffset= myoffset-offset;
				else{
					myoffset = 1;
				}
			}else if(orientation == 3){
				myoffset= 1;
			}else if(orientation == 4){
				
				myoffset= pageTo;
			}

			ArrayList<User> userList= adminService.getAllUser(myoffset,mypagesize);
			request.setAttribute("userList", userList);
			
			//第一个转向的页面不用添加 attr.addAttrbute  其他的谁转向这个页面就写属性
			return "admin/user/userManagePage";	
		}
	
	/******************用户处理************************************************/
	
	
	
	
	
	
	
	
	
	
	
	
	/******************商品处理************************************************/
	
	@RequestMapping("/productList")
	public ModelAndView productList(int offset, int orientation, Long kuCunNum, Long stateNum,String name,
			RedirectAttributes attr) {
		ModelAndView mav = new ModelAndView();

		// orientation 1代表下一页 2，代表上一页 3 首页 4尾页
		int brandCount = adminService.getAllProductCount();
		int pageTo = brandCount % mypagesize == 0 ? brandCount / mypagesize
				: brandCount / mypagesize + 1;
		if (orientation == 1) {
			if (myoffset + offset <= pageTo)
				myoffset = myoffset + offset;
			else {
				myoffset = pageTo;
			}
		} else if (orientation == 2) {
			if (myoffset - offset >= 0)
				myoffset = myoffset - offset;
			else {
				myoffset = 1;
			}
		} else if (orientation == 3) {
			myoffset = 1;
		} else if (orientation == 4) {

			myoffset = pageTo;
		}
		List<Product> productList = null;
		if (kuCunNum == null) {
			productList = adminService.finaProductList(myoffset,
					mypagesize);
		}else{
			productList = adminService.finaProductKCList(myoffset , mypagesize , kuCunNum, stateNum , name);
		}
		mav.addObject("stateNum", stateNum);
		mav.addObject("kuCunNum", kuCunNum);
		mav.addObject("name", name);
		
		//查询所有品牌，前台显示 比较商品中c_id 和 品牌ID
		List<Brand> brangList  = adminService.getAllBrand();
		List<Category> categoryList  = adminService.finaCategoryAll();
		
		mav.addObject("brangList", brangList);
		mav.addObject("categoryList", categoryList);
		mav.addObject("productList", productList);
		mav.setViewName("admin/product/product_list");
		return mav;
	}

	@RequestMapping("/productAddUI")
	public ModelAndView productAddUI() {
		ModelAndView mav = new ModelAndView();
		List<Category> categoryList = adminService.finaCategoryAll();
		List<Brand> brandList = adminService.getAllBrand();
		mav.addObject("categoryList", categoryList);
		mav.addObject("brandList", brandList);
		mav.setViewName("admin/product/product_add");
		return mav;
	}

	@RequestMapping("/productAdd")
	public String productAdd(HttpServletRequest request, RedirectAttributes attr) {
		Product product = new Product();
		String p_vip_price = request.getParameter("p_vip_price");
		String string;
		int i = p_vip_price.indexOf(".");
		if (i != -1) {
			string = p_vip_price;
			string = string.substring(i + 1, string.length());
			if (string.length() <= 2) {
				if (string.length() == 1) {
					string = string + "0";
				}
			} else {
				string = string.substring(0, 2);
			}
			p_vip_price = p_vip_price.substring(0, i) + string;
		} else {
			p_vip_price += "00";
		}
		String p_shop_price = request.getParameter("p_shop_price");
		i = p_shop_price.indexOf(".");
		if (i != -1) {
			string = p_shop_price;
			string = string.substring(i + 1, string.length());
			if (string.length() <= 2) {
				if (string.length() == 1) {
					string = string + "0";
				}
			} else {
				string = string.substring(0, 2);
			}
			p_shop_price = p_shop_price.substring(0, i) + string;
		} else {
			p_shop_price += "00";
		}
		product.setP_vip_price(Integer.parseInt(p_vip_price));
		product.setP_shop_price(Integer.parseInt(p_shop_price));
		product.setP_attr(request.getParameter("p_attr"));
		product.setP_b_id(Integer.parseInt(request.getParameter("p_b_id")));
		product.setP_description(request.getParameter("p_description"));
		product.setP_goods_surplus(Integer.parseInt(request
				.getParameter("p_goods_surplus")));
		product.setC_id(Integer.parseInt(request.getParameter("c_id")));
		product.setP_name(request.getParameter("p_name"));

		// 图片
		String uploadfileDir = "upload/product";
		String newFileName = UploadImgToPointDir.getDate();
		String fileNameString = UploadImgToPointDir.uploadImgToPointDir2(
				request, uploadfileDir, newFileName);
		if (!fileNameString.equals(newFileName)) {
			System.out.println("------1" + fileNameString);
			System.out.println(newFileName);
			String filePath = "/mystory/" + uploadfileDir + "/"
					+ fileNameString.trim();
			product.setP_img_path(filePath);
		}
		adminService.productAdd(product);

		attr.addAttribute("offset", 1);
		attr.addAttribute("orientation", 1);
		return "redirect:productList";
	}

	@RequestMapping("/productUpdateUI")
	public ModelAndView productUpdateUI(Long id, String p_vip_price,
			String p_shop_price) {
		ModelAndView mav = new ModelAndView();
		Product product = new Product();
		product = adminService.getProductById(id);

		mav.addObject("product", product);
		List<Category> categoryList = adminService.finaCategoryAll();
		List<Brand> brandList = adminService.getAllBrand();
		mav.addObject("categoryList", categoryList);
		mav.addObject("brandList", brandList);
		mav.setViewName("admin/product/product_update");
		return mav;
	}

	@RequestMapping("/productUpdate")
	public String productUpdate(HttpServletRequest request,
			RedirectAttributes attr) {

		Product product = new Product();
		String p_vip_price = request.getParameter("p_vip_price");
		String string;
		int i = p_vip_price.indexOf(".");
		if (i != -1) {
			string = p_vip_price;
			string = string.substring(i + 1, string.length());
			if (string.length() <= 2) {
				if (string.length() == 1) {
					string = string + "0";
				}
			} else {
				string = string.substring(0, 2);
			}
			p_vip_price = p_vip_price.substring(0, i) + string;
		} else {
			p_vip_price += "00";
		}
		String p_shop_price = request.getParameter("p_shop_price");
		i = p_shop_price.indexOf(".");
		if (i != -1) {
			string = p_shop_price;
			string = string.substring(i + 1, string.length());
			if (string.length() <= 2) {
				if (string.length() == 1) {
					string = string + "0";
				}
			} else {
				string = string.substring(0, 2);
			}
			p_shop_price = p_shop_price.substring(0, i) + string;
		} else {
			p_shop_price += "00";
		}
		product.setP_id(Integer.parseInt(request.getParameter("p_id")));
		product.setP_vip_price(Integer.parseInt(p_vip_price));
		product.setP_shop_price(Integer.parseInt(p_shop_price));
		product.setP_attr(request.getParameter("p_attr"));
		product.setP_b_id(Integer.parseInt(request.getParameter("p_b_id")));
		product.setP_description(request.getParameter("p_description"));
		product.setP_goods_surplus(Integer.parseInt(request
				.getParameter("p_goods_surplus")));
		product.setC_id(Integer.parseInt(request.getParameter("c_id")));
		product.setP_name(request.getParameter("p_name"));

		// 图片

		String uploadfileDir = "upload/product";
		String newFileName = UploadImgToPointDir.getDate();
		String fileNameString = UploadImgToPointDir.uploadImgToPointDir2(
				request, uploadfileDir, newFileName);
		if (!fileNameString.equals(newFileName)) {
			System.out.println("------1" + fileNameString);
			System.out.println(newFileName);
			String filePath = "/mystory/" + uploadfileDir + "/"
					+ fileNameString.trim();
			System.out.println(filePath);
			product.setP_img_path(filePath);
		}

		adminService.productUpdate(product);
		attr.addAttribute("offset", 1);
		attr.addAttribute("orientation", 1);
		return "redirect:productList";
	}

	@RequestMapping("/productDelete")
	public String productDelete(Long id, RedirectAttributes attr) {
		adminService.productDelete(id);
		attr.addAttribute("offset", 1);
		attr.addAttribute("orientation", 1);
		return "redirect:productList";
	}


	
	/******************商品处理************************************************/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/******************类别处理************************************************/
	
	//类别列表
	@RequestMapping("/categoryList")
	public ModelAndView categoryList(Long id) {
		ModelAndView mav = new ModelAndView();
		List<Category> categoryList = null;
		categoryList = adminService.finaCategoryTop();
		List<TreeShow> treeShowList = adminService.finaCategoryTreeShow(categoryList , new TreeShow());
		
		mav.addObject("treeShowList", treeShowList);

		mav.setViewName("admin/category/list");
		return mav;
	}
	
	
	//类别添加准备
	@RequestMapping("/categoryAddUI")
	public ModelAndView categoryAddUI(Long id){
		ModelAndView mav = new ModelAndView();
		List<Category> categoryList = adminService.finaCategoryAll();
		mav.addObject("categoryList", categoryList);
		mav.addObject("id", id);
		mav.setViewName("admin/category/add");
		return mav;
	}
		
		//类别添加
		@RequestMapping("/categoryAdd")
		public String categoryAdd(Category category) throws UnsupportedEncodingException{
			
			String name = new String(category.getC_name().getBytes("ISO-8859-1"),"utf-8");
			category.setC_name(name);
			adminService.categoryAdd(category);
			if(category.getC_pid() != null)
			return "redirect:categoryList.do?id=" + category.getC_pid();
			else {
				return "redirect:categoryList.do";
			}
		}
		//类别修改准备
		@RequestMapping("/categoryUpdateUI")
		public ModelAndView categoryUpdateUI(Long id){
			ModelAndView mav = new ModelAndView();
			Category category = adminService.getCategoryById(id);
			mav.addObject("category", category);
			
			List<Category> categoryList = adminService.finaCategoryAll();
			mav.addObject("categoryList", categoryList);
			mav.setViewName("admin/category/update");
			return mav;
		}
		//类别修改
		@RequestMapping("/categoryUpdate")
		public String update(Long c_id , String c_name , Long c_pid) throws UnsupportedEncodingException{

			Category category1 = new Category();
			
			c_name = new String(c_name.getBytes("ISO-8859-1"),"utf-8");
			System.out.println(c_name);
			category1.setC_id(c_id.intValue());
			category1.setC_name(c_name);
			category1.setC_pid(c_pid.intValue());
			adminService.categoryUpdate(category1);
			if(c_pid != null){
				return "redirect:categoryList.do?id=" + c_pid;
			}else{
				return "redirect:categoryList.do";
			}
		}
		//类别删除
		@RequestMapping("/categoryDelete")
		public String categoryDelete(Long id){
			Category category = adminService.getCategoryById(id);
			System.out.println(category.getC_name());
			adminService.categoryDelete(category);
			if(category.getC_pid() != null)
			return "redirect:categoryList.do?id=" + category.getC_pid();
			else{
				return "redirect:categoryList.do";
			}
		}
		//类别按照name模糊查询
		@RequestMapping("/categorySelect")
		public ModelAndView categorySelect(String name){
			ModelAndView mav = new ModelAndView();
			List<Category> categoryList = adminService.getCategoryByNames(name);
			mav.addObject("categoryList", categoryList);
			mav.setViewName("admin/category/show");
			return mav;
		}
		
	
	/******************类别处理************************************************/
	
	/******************品牌处理************************************************/
	//商标管理主页面
	//offset 是默认显示第几页   toPage是跳转到哪一页
	@RequestMapping("brandManage")
	public String getAllBrand(HttpServletRequest request,int offset,int orientation,RedirectAttributes attr){
		
		int brandCount = adminService.getAllBrandCount();
		int pageTo = brandCount%mypagesize==0?brandCount/mypagesize:brandCount/mypagesize+1;
		//orientation  1代表下一页   2，代表上一页 3 首页  4尾页
		if(orientation == 1 ){
			if(myoffset + offset <= pageTo)
			myoffset= myoffset+offset;
			else{
				myoffset = pageTo;
			}
		}else if(orientation == 2){
			if(myoffset - offset >= 0)
			myoffset= myoffset-offset;
			else{
				myoffset = 1;
			}
		}else if(orientation == 3){
			myoffset= 1;
		}else if(orientation == 4){
			
			myoffset= pageTo;
		}

		
		
		ArrayList<Brand> brandList= adminService.getAllBrand(myoffset,mypagesize);
		request.setAttribute("brandList", brandList);
		
		//第一个转向的页面不用添加 attr.addAttrbute  其他的谁转向这个页面就写属性
		return "admin/brand/brandManagePage";	
	}
	
	//根据id修改品牌，先去数据库查询有品牌详细信息
	@RequestMapping("modifyBrandById")
	public String getBrandById(String id,HttpServletRequest request){
		Brand brand= adminService.getBrandById(id);
		request.setAttribute("brand_detail", brand);
		return "/admin/brand/brand_detail";	
	}
	
	//根据id修改品牌
	@RequestMapping("updateBrandById")
	public String updateBrandById(@ModelAttribute("form") Brand brand,HttpServletRequest request){
			boolean flag= adminService.updateBrandById(brand);
			if(flag){
				return "redirect:/brandManage?offset=1&pagesize=3&orientation=1";//这里有些不同，这里是跳转到这个control的另外一个方法
			}else{
				request.setAttribute("brand_detail", brand);
				request.setAttribute("message", "修改失败");
				return "/admin/brand/brand_detail";	
			}
			
		}
		
	
		//给品牌修改上传照片
		@RequestMapping("updateBrandImg")
		public String updateBrandImg(HttpServletRequest request,HttpServletResponse response,RedirectAttributes attr) {
			String uploadfileDir ="upload/brand";
			String newFileName = UploadImgToPointDir.getDate();
			//上传后的文件名
			String fileName =  UploadImgToPointDir.uploadImgToPointDir2(request,uploadfileDir, newFileName);
			String id =  request.getParameter("id");//该图片所对应的小说id
			//拼接字符串 /mystory/upload/brand/demoUploadHydrangeas.jpg
			String filePath = "/mystory/"+uploadfileDir+"/"+fileName.trim();
			//将商标的图片修改
			boolean falg2 = adminService.updateBrandPhoto(new Integer(id),filePath);
			//falg1是文件上传成功，falg2是数据库文件名修改成功，两个都成功 才叫成功  
			if(fileName!="" && falg2){	
				//control之间重定向数据传递
				attr.addAttribute("offset", 1);
				attr.addAttribute("orientation", 1);
				return "redirect:/brandManage";//这里有些不同，这里是跳转到这个control的另外一个方法
			}
			return "/admin/error";
		}
	
	
	
	
	
	
	//@author lcc
	//根据id删除品牌
	@RequestMapping("delBrandById")
	public String delBrandById(String id,HttpServletRequest request){
		boolean flag= adminService.delBrandById(id);
		if(flag){
			request.setAttribute("message", "删除成功");
		}else{
			request.setAttribute("message", "删除失败");
		}
		return "redirect:/brandManage";//这里有些不同，这里是跳转到这个control的另外一个方法
		
	}
	
	
	//@author lcc
	//添加品牌
	@RequestMapping("/addBrand")
	public String addBrand(@ModelAttribute Brand brand,RedirectAttributes attr){
		boolean flag= adminService.addBrand(brand);
		if(flag){
			//request.setAttribute("message", "增加成功");
		}else{
			//request.setAttribute("message", "增加失败");
		}
		
		//control之间重定向数据传递
		attr.addAttribute("offset", 1);
		attr.addAttribute("orientation", 1);
		return "redirect:/brandManage";//这里有些不同，这里是跳转到这个control的另外一个方法
			
	}
		
	
	
	
	/******************品牌处理结束************************************************/
	
	/******************公共方法结束************************************************/
	//写一个专门用来jsp与jsp跳转的时候传值解决
	//whatPage 要去那个页面
	//parameter 传入的参数
	@RequestMapping("toJspPage")
	public String toJspPage(String whatPage,String parameter,HttpServletRequest request){
				
			request.setAttribute("parameter", parameter);
			return whatPage;
				
	}
		
		
		/******************公共方法结束************************************************/
		
}

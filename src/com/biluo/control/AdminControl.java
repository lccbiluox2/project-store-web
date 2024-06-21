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

import com.biluo.domain.Admin;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.service.AdminService;

@Controller
public class AdminControl {
	

	
	
	@Resource
	private AdminService adminService;
	
	
	//管理员登录
	@RequestMapping("/getAdmin")
	public String getAdmin(Admin admin){
		Admin adm = adminService.getAdmin(admin);
		return "admin/success";	
	}
	
	
	
	/******************类别处理************************************************/
	
	//类别列表
	@RequestMapping("/categoryList")
	public ModelAndView categoryList(Long id){
		ModelAndView mav = new ModelAndView();
		List<Category> categoryList = null;
		if(id == null || id == 0){
			categoryList = adminService.finaCategoryTop();
		}else{
			categoryList = adminService.finaCategoryById(id);
			Category category = adminService.getCategoryById(id);
			mav.addObject("category1", category);
		}	
		
		mav.addObject("categoryList", categoryList);

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
	@RequestMapping("brandManage")
	public String getAllBrand(HttpServletRequest request){
		ArrayList<Brand> brandList= adminService.getAllBrand();
		request.setAttribute("brandList", brandList);
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
				return "redirect:/brandManage";//这里有些不同，这里是跳转到这个control的另外一个方法
			}else{
				request.setAttribute("brand_detail", brand);
				request.setAttribute("message", "修改失败");
				return "/admin/brand/brand_detail";	
			}
			
		}
		
	
		//给小说上传照片
		@RequestMapping("updateBrandImg")
		public String updateBrandImg(HttpServletRequest request,HttpServletResponse response) {
			
			String fileName =null;//上传后的文件名
			String id =  request.getParameter("id");//该图片所对应的小说id
			boolean falg1 = false;
			
			/*得到上下文  解析器*/
			CommonsMultipartResolver multipartResolver  = new CommonsMultipartResolver(request.getSession().getServletContext());
			/*因为request中传入的一大堆数据，有字符串，有文件，这里要挑选出来，处理文件*/
			if(multipartResolver.isMultipart(request)){
				/*转化*/
				MultipartHttpServletRequest  multiRequest = (MultipartHttpServletRequest)request;
				//得到项目的目录
				String path = request.getSession().getServletContext().getRealPath("upload/brand");
				System.out.println("上传路径"+path);
				Iterator<String>  iter = multiRequest.getFileNames();//遍历文件名称，可以知道有多少文件
				while(iter.hasNext()){
						MultipartFile file = multiRequest.getFile((String)iter.next());//这里得到的文件是MultipartFile类型
					if(file != null){
						fileName = "demoUpload" + file.getOriginalFilename();
						String path2 = path +"/"+ fileName;//这个斜杠不可少
						System.out.println("上传路径"+path);
						File localFile = new File(path2);
						System.out.println("上传路径2"+path2);
						System.out.println("fileName"+fileName);
						try {
							file.transferTo(localFile);
						} catch (IllegalStateException e) {
							e.printStackTrace();
						} catch (IOException e) {
							e.printStackTrace();
						}
						
						//没报错才是上传成功
						falg1 = true ;
					}
					
				}
			}
			
			//拼接字符串 .mystory.upload.brand.demoUploadHydrangeas.jpg
			String filePath = "/mystory/upload/brand/"+fileName;
			
			System.out.println(filePath);
			//将商标的图片修改
			boolean falg2 = adminService.updateBrandPhoto(new Integer(id),filePath);
			if(falg1 && falg2){	//falg1是文件上传成功，falg2是数据库文件名修改成功，两个都成功 才叫成功  
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
	public String addBrand(@ModelAttribute Brand brand){
		
		System.out.println("-----添加品牌------"+brand.getB_img_path());
		System.out.println("-----添加品牌------"+brand.getB_name());
		
		boolean flag= adminService.addBrand(brand);
		if(flag){
			//request.setAttribute("message", "增加成功");
		}else{
			//request.setAttribute("message", "增加失败");
		}
		return "redirect:/brandManage";//这里有些不同，这里是跳转到这个control的另外一个方法
			
	}
		
	
	
	
	/******************品牌处理结束************************************************/
	
	/******************公共方法结束************************************************/
	//写一个专门用来jsp与jsp跳转的时候传值解决
		@RequestMapping("toJspPage")
		public String toJspPage(String whatPage,String parameter,HttpServletRequest request){
				
			System.out.println("要去那个页面"+whatPage);
			System.out.println("传入的参数"+parameter);
				
			request.setAttribute("parameter", parameter);
			return whatPage;
				
		}
		
		
		/******************公共方法结束************************************************/
		
}

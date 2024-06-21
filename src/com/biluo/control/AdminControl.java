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
	
	
	//����Ա��¼
	@RequestMapping("/getAdmin")
	public String getAdmin(Admin admin){
		Admin adm = adminService.getAdmin(admin);
		return "admin/success";	
	}
	
	
	
	/******************�����************************************************/
	
	//����б�
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
	
	
	//������׼��
	@RequestMapping("/categoryAddUI")
	public ModelAndView categoryAddUI(Long id){
		ModelAndView mav = new ModelAndView();
		List<Category> categoryList = adminService.finaCategoryAll();
		mav.addObject("categoryList", categoryList);
		mav.addObject("id", id);
		mav.setViewName("admin/category/add");
		return mav;
	}
		
		//������
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
		//����޸�׼��
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
		//����޸�
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
		//���ɾ��
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
		//�����nameģ����ѯ
		@RequestMapping("/categorySelect")
		public ModelAndView categorySelect(String name){
			ModelAndView mav = new ModelAndView();
			List<Category> categoryList = adminService.getCategoryByNames(name);
			mav.addObject("categoryList", categoryList);
			mav.setViewName("admin/category/show");
			return mav;
		}
		
	
	/******************�����************************************************/
	
	/******************Ʒ�ƴ���************************************************/
	//�̱������ҳ��
	@RequestMapping("brandManage")
	public String getAllBrand(HttpServletRequest request){
		ArrayList<Brand> brandList= adminService.getAllBrand();
		request.setAttribute("brandList", brandList);
		return "admin/brand/brandManagePage";	
	}
	
	//����id�޸�Ʒ�ƣ���ȥ���ݿ��ѯ��Ʒ����ϸ��Ϣ
	@RequestMapping("modifyBrandById")
	public String getBrandById(String id,HttpServletRequest request){
		Brand brand= adminService.getBrandById(id);
		request.setAttribute("brand_detail", brand);
		return "/admin/brand/brand_detail";	
	}
	
	//����id�޸�Ʒ��
	@RequestMapping("updateBrandById")
	public String updateBrandById(@ModelAttribute("form") Brand brand,HttpServletRequest request){
			boolean flag= adminService.updateBrandById(brand);
			if(flag){
				return "redirect:/brandManage";//������Щ��ͬ����������ת�����control������һ������
			}else{
				request.setAttribute("brand_detail", brand);
				request.setAttribute("message", "�޸�ʧ��");
				return "/admin/brand/brand_detail";	
			}
			
		}
		
	
		//��С˵�ϴ���Ƭ
		@RequestMapping("updateBrandImg")
		public String updateBrandImg(HttpServletRequest request,HttpServletResponse response) {
			
			String fileName =null;//�ϴ�����ļ���
			String id =  request.getParameter("id");//��ͼƬ����Ӧ��С˵id
			boolean falg1 = false;
			
			/*�õ�������  ������*/
			CommonsMultipartResolver multipartResolver  = new CommonsMultipartResolver(request.getSession().getServletContext());
			/*��Ϊrequest�д����һ������ݣ����ַ��������ļ�������Ҫ��ѡ�����������ļ�*/
			if(multipartResolver.isMultipart(request)){
				/*ת��*/
				MultipartHttpServletRequest  multiRequest = (MultipartHttpServletRequest)request;
				//�õ���Ŀ��Ŀ¼
				String path = request.getSession().getServletContext().getRealPath("upload/brand");
				System.out.println("�ϴ�·��"+path);
				Iterator<String>  iter = multiRequest.getFileNames();//�����ļ����ƣ�����֪���ж����ļ�
				while(iter.hasNext()){
						MultipartFile file = multiRequest.getFile((String)iter.next());//����õ����ļ���MultipartFile����
					if(file != null){
						fileName = "demoUpload" + file.getOriginalFilename();
						String path2 = path +"/"+ fileName;//���б�ܲ�����
						System.out.println("�ϴ�·��"+path);
						File localFile = new File(path2);
						System.out.println("�ϴ�·��2"+path2);
						System.out.println("fileName"+fileName);
						try {
							file.transferTo(localFile);
						} catch (IllegalStateException e) {
							e.printStackTrace();
						} catch (IOException e) {
							e.printStackTrace();
						}
						
						//û��������ϴ��ɹ�
						falg1 = true ;
					}
					
				}
			}
			
			//ƴ���ַ��� .mystory.upload.brand.demoUploadHydrangeas.jpg
			String filePath = "/mystory/upload/brand/"+fileName;
			
			System.out.println(filePath);
			//���̱��ͼƬ�޸�
			boolean falg2 = adminService.updateBrandPhoto(new Integer(id),filePath);
			if(falg1 && falg2){	//falg1���ļ��ϴ��ɹ���falg2�����ݿ��ļ����޸ĳɹ����������ɹ� �Žгɹ�  
				return "redirect:/brandManage";//������Щ��ͬ����������ת�����control������һ������
			}
			
			return "/admin/error";
			
		
			
		}
	
	
	
	
	
	
	//@author lcc
	//����idɾ��Ʒ��
	@RequestMapping("delBrandById")
	public String delBrandById(String id,HttpServletRequest request){
		boolean flag= adminService.delBrandById(id);
		if(flag){
			request.setAttribute("message", "ɾ���ɹ�");
		}else{
			request.setAttribute("message", "ɾ��ʧ��");
		}
		return "redirect:/brandManage";//������Щ��ͬ����������ת�����control������һ������
		
	}
	
	
	//@author lcc
	//���Ʒ��
	@RequestMapping("/addBrand")
	public String addBrand(@ModelAttribute Brand brand){
		
		System.out.println("-----���Ʒ��------"+brand.getB_img_path());
		System.out.println("-----���Ʒ��------"+brand.getB_name());
		
		boolean flag= adminService.addBrand(brand);
		if(flag){
			//request.setAttribute("message", "���ӳɹ�");
		}else{
			//request.setAttribute("message", "����ʧ��");
		}
		return "redirect:/brandManage";//������Щ��ͬ����������ת�����control������һ������
			
	}
		
	
	
	
	/******************Ʒ�ƴ������************************************************/
	
	/******************������������************************************************/
	//дһ��ר������jsp��jsp��ת��ʱ��ֵ���
		@RequestMapping("toJspPage")
		public String toJspPage(String whatPage,String parameter,HttpServletRequest request){
				
			System.out.println("Ҫȥ�Ǹ�ҳ��"+whatPage);
			System.out.println("����Ĳ���"+parameter);
				
			request.setAttribute("parameter", parameter);
			return whatPage;
				
		}
		
		
		/******************������������************************************************/
		
}

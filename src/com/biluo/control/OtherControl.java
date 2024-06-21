package com.biluo.control;

import javax.annotation.Resource;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biluo.common.UploadImgToPointDir;


@Controller
public class OtherControl {
		
	
	
	//图片显示列表
	@RequestMapping("/ImgUploadList")
	public String ImgUploadList(){
		
		return "admin/other/ImgList";
	}
	
	//图片上传准备
	@RequestMapping("/ImgUploadUI")
	public ModelAndView ImgUploadUI(Long img_id){
		ModelAndView mav = new ModelAndView();
		mav.addObject("img_id", img_id);
		mav.setViewName("admin/other/Img_add");
		return mav;
	}
	
	//图片上传
	@RequestMapping("/ImgUpload")
	public String ImgUpload(HttpServletRequest request){
		
		String uploadfileDir = "index/plungs/mylinght/images";
		String newFileName = "img" + request.getParameter("img_id");
		String fileNameString = UploadImgToPointDir.uploadImgToPointDir2(
				request, uploadfileDir, newFileName);
		if (!fileNameString.equals(newFileName)) {
			System.out.println("------1" + fileNameString);
			System.out.println(newFileName);
			String filePath = "/mystory/" + uploadfileDir + "/"
					+ fileNameString.trim();
			System.out.println(filePath);
		}
		
		return "redirect:ImgUploadList";
		
	}
	
	
	
}

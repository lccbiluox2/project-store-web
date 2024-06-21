package com.biluo.control;

import javax.annotation.Resource;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biluo.common.UploadImgToPointDir;


@Controller
public class OtherControl {
		
	
	

	
	//图片上传
	@RequestMapping("/ImgUpload")
	public String ImgUpload(String id,HttpServletRequest request){
		System.out.println("id"+id);
		String uploadfileDir = "index/plungs/mylinght/images";
		String newFileName = "img" + id;
		String fileNameString = UploadImgToPointDir.uploadImgToPointDir2(
				request, uploadfileDir, newFileName);
		if (!fileNameString.equals(newFileName)) {
			System.out.println("------1" + fileNameString);
			System.out.println(newFileName);
			String filePath = "/mystory/" + uploadfileDir + "/"
					+ fileNameString.trim();
			System.out.println(filePath);
		}
		
		return "admin/update_index_pic";
		
	}
	
	
	
}

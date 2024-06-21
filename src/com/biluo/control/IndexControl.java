package com.biluo.control;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biluo.common.TreeShow;
import com.biluo.domain.Category;
import com.biluo.domain.Product;
import com.biluo.service.IndexService;

@Controller
public class IndexControl {
	@Resource
	private IndexService indexService;

	// 主页面初始化数据
	@RequestMapping("/indexList")
	public ModelAndView indexList() {
		System.out.println("------------进入主页处理厂--------------------");
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		// 查询类别
		List<Category> top = indexService.finaCategroyTop();
		List<TreeShow> treeCategoryList = indexService.finaCategoryTreeShow(
				top, new TreeShow());
		map.put("treeCategoryList", treeCategoryList);
		// 查询新品
		List<Product> xpProductList = indexService.finaProductByCondition(1);
		map.put("xpProductList", xpProductList);
		// 查询热卖
		List<Product> rmProductList = indexService.finaProductByCondition(2);
		map.put("rmProductList", rmProductList);
		// 查询特价商品
		List<Product> tjProductList = indexService.finaProductByCondition(3);
		map.put("tjProductList", tjProductList);

		// 查询猜你喜欢
		List<Product> likeProductList = indexService.finaProductByLike();
		map.put("likeProductList", likeProductList);

		// 商品分类别显示
		/*
		 * List<TreeShow> flProductList = indexService.finaProductByFL(top,new
		 * TreeShow() , 0);
		 * 
		 * map.put("flProductList", flProductList);
		 */
		System.out.println("-------------------------------------------");
		List<TreeShow> flProductList = indexService.finaProductByFL(top,
				new TreeShow(), 0);
		int j = 1;
		for (TreeShow treeShow : flProductList) {
			map.put("treeShow" + j, treeShow);

			j++;
		}

		mav.addObject("map", map);
		mav.setViewName("index/index");
		return mav;
	}

	// 搜索栏查询
	@RequestMapping("/ssSelectProduct")
	public ModelAndView ssSelectProduct(String str)
			throws UnsupportedEncodingException {

		ModelAndView mav = new ModelAndView();
		List<Product> productList = new ArrayList<Product>();
		if (str == null || str == "") {
			productList = indexService.finaProductBySearch(str);
		} else {
			str = new String(str.getBytes("ISO-8859-1"), "UTF-8");

			productList = indexService.finaProductBySearch(str);
		}
		mav.addObject("productList", productList);
		mav.setViewName("index/productList");

		return mav;
	}

}

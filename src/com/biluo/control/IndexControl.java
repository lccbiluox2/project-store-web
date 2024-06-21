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

import com.biluo.common.ProductAndCategory;
import com.biluo.common.TreeShow;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.PageBean;
import com.biluo.domain.Product;
import com.biluo.service.IndexService;

@Controller
public class IndexControl {
	@Resource
	private IndexService indexService;

	int currentPage = 1;//页面默认是第一页2016/5/25
	int mypagesize = 5;//默认页面显示几条数据
	
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
		public ModelAndView ssSelectProduct(String searchText, Long currentPage)
				throws UnsupportedEncodingException {
			if(currentPage == null){
				currentPage = 1l;
			}

			ModelAndView mav = new ModelAndView();
			PageBean pageBean;
			if (searchText == null || searchText == "") {
				pageBean = indexService.finaProductBySearch(searchText, currentPage.intValue(), 36);
			} else {
				searchText = new String(searchText.getBytes("ISO-8859-1"), "UTF-8");

				pageBean = indexService.finaProductBySearch(searchText, currentPage.intValue(), 36);
			}
			
			System.out.println(searchText+"xxxxxxxxxxxx");
			
			mav.addObject("pageBean", pageBean);
			mav.addObject("str", searchText);
			mav.setViewName("index/search_product_list");

			return mav;
		}
	
	
	
	
	//得到所有品牌
	@RequestMapping("/getAllBrand")
	public ModelAndView getAllBrand(){

		ModelAndView mav = new ModelAndView();
		List<Brand> brandList = new ArrayList<Brand>();
		//随机显示六个品牌
		List<Brand> randomBrandList = new ArrayList<Brand>();
		
		brandList = indexService.getAllBrand();
		int randomCount = 6;//随机数量
		randomBrandList = indexService.getRandomBrandList(randomCount);
		
		mav.addObject("brandList", brandList);
		mav.addObject("randomBrandList", randomBrandList);
		mav.setViewName("index/show_all_brand");

		return mav;
	}
	
	
	//根据品牌得到所有商品  
	@RequestMapping("/getProductByBrandId")
	public ModelAndView getProductByBrandId(int id){

		ModelAndView mav = new ModelAndView();
		List<Product> productList = new ArrayList<Product>();
		
		productList = indexService.getProductByBrandId(id);
	
		mav.addObject("productList", productList);
		mav.setViewName("index/search_product_list");

		return mav;
	}
	
	
	
	// 点击类别查询
	@RequestMapping("/clickCategorySelect")
	public ModelAndView clickCategorySelect(Long layerNum, Integer id, Long currentPage) {
		ModelAndView mav = new ModelAndView();
		if(currentPage == null){
			currentPage = 1l;
		}
		ProductAndCategory pac = indexService.finaCategoryByClick(layerNum,
				id, currentPage.intValue(), 36);
		int recordCount = indexService.getProductCount();
		PageBean pageBean = new PageBean(currentPage.intValue(), 36, recordCount, new ArrayList());
		mav.addObject("pac", pac);
		mav.addObject("pageBean", pageBean);
		mav.addObject("layerNum", layerNum);
		mav.addObject("id", id);
		mav.setViewName("index/product_select");//这个没写
		return mav;
	}
	
	
	@RequestMapping("/getProductById")
	public ModelAndView getProductById(int id){

		ModelAndView mav = new ModelAndView();
		Product product = indexService.getProductById(new Integer(id));
		Brand brand = indexService.getBrandById(product.getC_id());
		mav.addObject("product", product);
		mav.addObject("brand", brand);
		mav.setViewName("index/product_detail");
	
		return mav;
	}
	
	
	
	
	
	
	//查看全部商品
	@RequestMapping("/finaProductList")
	public ModelAndView finaProductList(Long currentPage){
		if(currentPage == null){
			currentPage = 1l;
		}
		ModelAndView mav = new ModelAndView();
		PageBean pageBean = indexService.finaProductList(currentPage.intValue(), 36);
		mav.addObject("pageBean", pageBean);
		
		return mav;
	}
	
	
	
	
	
	
}

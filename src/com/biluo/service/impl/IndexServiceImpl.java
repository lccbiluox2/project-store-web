package com.biluo.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sun.reflect.generics.tree.Tree;

import com.biluo.common.ProductAndCategory;
import com.biluo.common.TreeShow;
import com.biluo.dao.IndexDao;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.PageBean;
import com.biluo.domain.Product;
import com.biluo.service.IndexService;
import com.sun.org.apache.xerces.internal.impl.dv.dtd.NMTOKENDatatypeValidator;

@Service
@Transactional
public class IndexServiceImpl implements IndexService {

	@Resource
	private IndexDao indexDao;

	@Override
	public List<TreeShow> finaCategoryTreeShow(List<Category> top, TreeShow tree) {
		List<TreeShow> treeList = new ArrayList<TreeShow>();
		for (Category category : top) {
			TreeShow treeShow = new TreeShow();
			treeShow.setParent(tree);
			treeShow.setCategory(category);
			List<Category> categoryChild = indexDao.finaCategoryById(new Long(
					category.getC_id()));
			List<TreeShow> categoryList2 = finaCategoryTreeShow(categoryChild,
					treeShow);
			treeShow.setChildrens(categoryList2);
			treeList.add(treeShow);
		}

		return treeList;
	}

	@Override
	public List<Category> finaCategroyTop() {
		// TODO Auto-generated method stub
		return indexDao.finaCategroyTop();
	}

	@Override
	public List<Product> finaProductByCondition(int i) {
		String sql = "";
		switch (i) {
		case 1:
			sql = "from Product p order by p.p_id desc";
			break;
		case 2:
			sql = "from Product p order by p.p_click_count desc";
			break;
		case 3:
			sql = "from Product p order by (p.p_shop_price/p.p_vip_price) desc";
			break;
		case 4:
			sql = "from Product p order by p.p_id desc";
			break;

		default:
			break;
		}
		return indexDao.finaProductByCondition(sql);
	}

	@Override
	public List<Product> finaProductByLike() {
		List<Product> productList = new ArrayList<Product>();

		int productCount = indexDao.getProductCount();
		int[] num = new int[5];
		for (int i = 0; i < ((productCount < num.length) ? productCount
				: num.length); i++) {
			int n = (int) (Math.random() * productCount) + 1;
			for (int j = 0; j < i; j++) {
				if (num[j] == n) {
					n = (int) (Math.random() * productCount) + 1;
					j = -1;
				}
			}
			num[i] = n;
			productList.add(indexDao.getProductById(n));
		}

		return productList;
	}

	// 分类别显示商品

	/*
	 * 分类别显示商品 
	 * @Override public List<TreeShow> finaProductByFL(List<Category> top,
	 * TreeShow tree, int i) {
	 * 
	 * List<TreeShow> treeList = new ArrayList<TreeShow>(); for(Category
	 * category : top){
	 * 
	 * TreeShow treeShow = new TreeShow(); treeShow.setParent(tree);
	 * treeShow.setCategory(category); List<Category> categoryChild =
	 * indexDao.finaCategoryById(new Long(category.getC_id()));
	 * if(categoryChild.size() == 0){ List<Product> productList =
	 * indexDao.finaProductById(category.getC_id());
	 * treeShow.setChildProducts(productList); }else{ List<TreeShow>
	 * categoryList2 = finaProductByFL(categoryChild , treeShow , i + 1);
	 * treeShow.setChildrens(categoryList2); } treeList.add(treeShow);
	 * 
	 * }
	 * 
	 * 
	 * return treeList;
	 * 
	 * }
	 */
	
	//主页一楼二楼三楼----12楼商品随机展示
	@Override
	public List<TreeShow> finaProductByFL(List<Category> top, TreeShow tree,
			int i) {

		List<TreeShow> treeList = new ArrayList<TreeShow>();
		for (Category category : top) {

			TreeShow treeShow = new TreeShow();
			treeShow.setParent(tree);
			treeShow.setCategory(category);
			List<Category> categoryChild = indexDao.finaCategoryById(new Long(
					category.getC_id()));
			if (categoryChild.size() != 0) {
				int n = (int) (Math.random() * categoryChild.size());
				Category category1 = categoryChild.get(n);
				TreeShow treeShow1 = new TreeShow();
				treeShow1.setCategory(category1);
				treeShow1.setParent(treeShow);
				List<Category> categoryChild1 = indexDao
						.finaCategoryById(new Long(category1.getC_id()));
				if (categoryChild1.size() != 0) {
					n = (int) (Math.random() * categoryChild1.size());
					Category category2 = categoryChild1.get(n);
					TreeShow treeShow2 = new TreeShow();
					treeShow2.setCategory(category2);
					treeShow2.setParent(treeShow1);
					List<Product> productList = indexDao
							.finaProductById(category2.getC_id());

					treeShow2.setChildProducts(productList);
					treeShow1.setChildren(treeShow2);
				}

				treeShow.setChildren(treeShow1);
			}

			treeList.add(treeShow);

		}

		return treeList;

	}

	   

		@Override
		public List<Brand> getAllBrand() {
			// TODO Auto-generated method stub
			return indexDao.getAllBrand();
		}

		@Override
		public List<Brand> getRandomBrandList(int randomCount) {
			// TODO Auto-generated method stub
			List<Brand> randomBrandList = new ArrayList<Brand>();
			int max = indexDao.getAllBrand().size();
			Random ram = new Random();
			int brandId = max;
			for(int i=0;i< randomCount;i++){
				brandId = ram.nextInt(max);
				System.out.println(brandId+"-------");
				randomBrandList.add(indexDao.getBrandById(brandId));
			}
			return randomBrandList;
		}

		@Override
		public List<Product> getProductByBrandId(int id) {
			// TODO Auto-generated method stub
			return indexDao.getProductByBrandId(id);
		}
		
		
		@Override
		public Product getProductById(Integer p_id) {
			// TODO Auto-generated method stub
			return indexDao.getProductById(p_id);
		}

		@Override
		public Brand getBrandById(Integer c_id) {
			// TODO Auto-generated method stub
			return indexDao.getBrandById(c_id);
		}

		// 根据搜索栏查询
		@Override
		public PageBean finaProductBySearch(String str, int currentPage, int pageSize) {
			
			List<Product> productList = new ArrayList<Product>();
			
			
			String sql = "";
			if(str == null || str == ""){
				sql = "from Product p order by p.p_id desc";
				productList = indexDao.finaProductBySearch(sql, currentPage, pageSize);
				int recordCount = indexDao.getProductCount();
				int pageCount = recordCount % currentPage == 0 ? recordCount / currentPage : recordCount / pageSize +1;
				if(currentPage > pageCount ){
					currentPage = pageCount;
				}
				if(currentPage < 1){
					currentPage = 1;
				}
				
				return new PageBean(currentPage, pageSize, recordCount, productList);
			}
			
			
			int n = 0;
			for (int i = 0; i < str.length(); i++) {
				if (str.charAt(i) >= '0' && str.charAt(i) <= '9') {
					n++;
				}
			}
			
			if (n == str.length()) {
				sql = "from Product p where p.p_number=" + str;
				productList = indexDao.finaProductBySearch(sql, currentPage, pageSize);
			} else {
				System.out.println("-psdgsdpg----------");
				List<Product> productNames = new ArrayList<Product>();
				List<Product> productAttrs = new ArrayList<Product>();
				sql = "from Product p where p.p_name like '%" + str + "%'";
				productNames = indexDao.finaProductBySearch(sql, currentPage, pageSize);
				sql = "from Product p where p.p_attr like '%" + str + "%'";
				productAttrs = indexDao.finaProductBySearch(sql, currentPage, pageSize);
				
				for (Product product : productNames) {
					/*for (Product product2 : productAttrs) {
						if (product.getP_id() == product2.getP_id()) {
							productList.add(product);
						} else {
							productList.add(product);
							productList.add(product2);
						}
					}*/
					productList.add(product);
				}
				for (Product product : productAttrs) {
					boolean vis = true;
					for (Product product2 : productList) {
						if(product.getP_id() == product2.getP_id()){
							vis = false;
							break;
						}
					}
					if(vis){
						productList.add(product);
					}
				}
				
				if(productNames.size() == 0){
					for (Product product2 : productAttrs) {
							productList.add(product2);
						}
				}
				
				
				

			}
			int recordCount = productList.size();
			
			System.out.println("recordCount"+recordCount);
			
			int pageCount = recordCount % currentPage == 0 ? recordCount / currentPage : recordCount / pageSize +1;
			if(currentPage > pageCount ){
				currentPage = pageCount;
			}
			if(currentPage < 1){
				currentPage = 1;
			}
			return new PageBean(currentPage, pageSize, recordCount, productList);
		}


		
/*		 // 根据搜索栏查询
		@Override
		public List<Product> finaProductBySearch(String str) {
			List<Product> productList = new ArrayList<Product>();
			String sql = "";
			if(str == null || str == ""){
				sql = "from Product p order by p.p_id desc limit 0,50";
				productList = indexDao.finaProductBySearch(sql);
				return productList;
			}
			
			
			int n = 0;
			for (int i = 0; i < str.length(); i++) {
				if (str.charAt(i) >= '0' && str.charAt(i) <= '9') {
					n++;
				}
			}
			
			if (n == str.length()) {
				sql = "from Product p where p.p_number=" + str;
				productList = indexDao.finaProductBySearch(sql);
			} else {
				List<Product> productNames = new ArrayList<Product>();
				List<Product> productAttrs = new ArrayList<Product>();
				sql = "from Product p where p.p_name like '%" + str + "%'";
				productNames = indexDao.finaProductBySearch(sql);
				sql = "from Product p where p.p_attr like '%" + str + "%'";
				productAttrs = indexDao.finaProductBySearch(sql);
				
				for (Product product : productNames) {
					for (Product product2 : productAttrs) {
						if (product.getP_id() == product2.getP_id()) {
							productList.add(product);
						} else {
							productList.add(product);
							productList.add(product2);
						}
					}
				}
				if(productNames.size() == 0){
					for (Product product2 : productAttrs) {
							productList.add(product2);
						}
				}

			}

			return productList;
		}
		*/
		
		//点击类别显示商品
		@Override
		public ProductAndCategory finaCategoryByClick(Long layerNum, Integer id, int currentPage, int pageSize) {
			ProductAndCategory pac = new ProductAndCategory();
			List<Category> categoryList = new ArrayList<Category>();
			List<Product> products = new ArrayList<Product>();
			if(layerNum == 2){
				Category category = indexDao.getCategoryById(id);
				Category parentCategory = indexDao.getCategoryById(category.getC_pid());
				categoryList.add(parentCategory);
				categoryList.add(category);
				String sql = "from Product p where p.c_id in (select c.c_id from Category c where c.c_pid="+ id +")";
				products = indexDao.finaProductByCategory(sql, currentPage, pageSize);
				
			}else if(layerNum == 3){
				Category category = indexDao.getCategoryById(id);
				Category parent1 = indexDao.getCategoryById(category.getC_pid());
				Category parent2 = indexDao.getCategoryById(parent1.getC_pid());
				String sql = "from Product p where p.c_id=" + id;
				products = indexDao.finaProductByCategory(sql, currentPage, pageSize);
				categoryList.add(parent2);
				categoryList.add(parent1);
				categoryList.add(category);
			}else if(layerNum == 4){
				Product product = indexDao.getProductById(id);
				Category parent1 = indexDao.getCategoryById(product.getC_id());
				Category parent2 = indexDao.getCategoryById(parent1.getC_pid());
				Category parent3 = indexDao.getCategoryById(parent2.getC_pid());
				categoryList.add(parent3);
				categoryList.add(parent2);
				categoryList.add(parent1);
				products.add(product);
				
			}
			
			
			pac.setCategorys(categoryList);
			pac.setProducts(products);
			
			return pac;
		}
		
		

		@Override
		public int getProductCount() {
			// TODO Auto-generated method stub
			return indexDao.getProductCount();
		}

		@Override
		public PageBean finaProductList(int currentPage, int pageSize) {
			// TODO Auto-generated method stub
			List<Product> productList = indexDao.finaProductList(currentPage, pageSize);
			int recordCount = indexDao.getProductCount();
			int pageCount = recordCount % currentPage == 0 ? recordCount / currentPage : recordCount / pageSize +1;
			if(currentPage > pageCount ){
				currentPage = pageCount;
			}
			if(currentPage < 1){
				currentPage = 1;
			}
			return new PageBean(currentPage, pageSize, recordCount, productList);
			
		
		}
		

}

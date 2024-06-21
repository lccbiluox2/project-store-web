package com.biluo.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sun.reflect.generics.tree.Tree;

import com.biluo.common.TreeShow;
import com.biluo.dao.IndexDao;
import com.biluo.domain.Category;
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

	    // 根据搜索栏查询
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

}

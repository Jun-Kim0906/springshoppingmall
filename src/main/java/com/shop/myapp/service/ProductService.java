package com.shop.myapp.service;

import java.util.List;

import com.shop.myapp.product.ProductVO;

public interface ProductService {
	public int insertProduct(ProductVO vo);
	public int deleteProduct(int pid);
	public List<ProductVO> getrecentProduct();
	public int thumbsupProduct(ProductVO vo);
	public List<ProductVO> getpopularProductList();
	public List<ProductVO> getProductList();
	public List<ProductVO> getMyProductList(int uid);
}

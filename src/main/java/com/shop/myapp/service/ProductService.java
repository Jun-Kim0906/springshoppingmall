package com.shop.myapp.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.shop.myapp.product.ProductVO;

public interface ProductService {
	public int insertProduct(ProductVO vo, HttpServletRequest request) throws IllegalStateException, IOException;
	public int deleteProduct(int pid);
	public List<ProductVO> getrecentProduct();
	public int thumbsupProduct(ProductVO vo);
	public List<ProductVO> getpopularProductList();
	public List<ProductVO> getProductList();
	public List<ProductVO> getMyProductList(int uid);
}

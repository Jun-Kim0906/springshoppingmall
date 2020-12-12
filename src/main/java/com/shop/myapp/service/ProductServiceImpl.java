package com.shop.myapp.service;

import org.springframework.stereotype.Service;

import com.shop.myapp.product.ProductDAO;
import com.shop.myapp.product.ProductVO;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;


@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductDAO productDAO;
	
	@Override
	public int insertProduct(ProductVO vo, HttpServletRequest request) throws IllegalStateException, IOException {
		return productDAO.insertProduct(vo, request);
	}

	@Override
	public int deleteProduct(int pid) {
		// TODO Auto-generated method stub
		return productDAO.deleteProduct(pid);
	}

	@Override
	public List<ProductVO> getrecentProduct() {
		// TODO Auto-generated method stub
		return productDAO.getrecentProduct();
	}

	@Override
	public int thumbsupProduct(int pid) {
		// TODO Auto-generated method stub
		return productDAO.thumbsupProduct(pid);
	}

	@Override
	public List<ProductVO> getpopularProductList() {
		// TODO Auto-generated method stub
		return productDAO.getpopularProductList();
	}

	@Override
	public List<ProductVO> getProductList() {
		// TODO Auto-generated method stub
		return productDAO.getProductList();
	}

	@Override
	public List<ProductVO> getMyProductList(int uid) {
		// TODO Auto-generated method stub
		return productDAO.getMyProductList(uid);
	}

	@Override
	public List<String> getColumnList() {
		return productDAO.getColumnList();
	}

	@Override
	public ProductVO getProduct(int pid) {
		return productDAO.getProduct(pid);
	}
	
	
}

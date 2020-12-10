package com.shop.myapp.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insertProduct(ProductVO vo) {
		int result = sqlSession.insert("Product.insertProduct", vo);
		return result;
	}
	
	public int updateProduct(ProductVO vo) {
		int result = sqlSession.update("Product.updateProduct", vo);
		return result;
	}
	
	public int deleteProduct(int pid) {
		int result = sqlSession.delete("Product.deleteProduct", pid);
		return result;
	}
	
	public List<ProductVO> getrecentProduct(){
		List<ProductVO> result = sqlSession.selectList("Product.getrecentProductList");
		return result;
	}
	
	public int thumbsupProduct(ProductVO vo) {
		int result = sqlSession.update("Product.thumbsupProduct", vo);
		return result;
	}
	
	public List<ProductVO> getpopularProductList(){
		List<ProductVO> result = sqlSession.selectList("Product.getpopularProductList");
		return result;
	}
	
	public List<ProductVO> getProductList(){
		List<ProductVO> result = sqlSession.selectList("Product.getProductList");
		return result;
	}
	
	public List<ProductVO> getMyProductList(int uid){
		List<ProductVO> result = sqlSession.selectList("Product.getMyProductList", uid);
		return result;
	}
}

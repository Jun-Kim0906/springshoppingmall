package com.shop.myapp.product;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

@Repository
public class ProductDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insertProduct(ProductVO vo, HttpServletRequest request) throws IllegalStateException, IOException {
		String fileName=null;
		MultipartFile uploadFile = vo.getUploadFile();
		ServletContext context = request.getSession().getServletContext();
		String realPath = context.getRealPath("upload");
		if (!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName);	//확장자 구하기
			UUID uuid = UUID.randomUUID();	//UUID 구하기
			fileName=uuid+"."+ext;
			uploadFile.transferTo(new File(realPath + "/" + fileName));
		}
		vo.setPhoto(fileName);
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

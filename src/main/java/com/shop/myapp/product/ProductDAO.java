package com.shop.myapp.product;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

@Repository
public class ProductDAO {
	private static final String UPLOAD_DIRECTORY ="/upload";  
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertProduct(ProductVO vo, HttpServletRequest request) throws IllegalStateException, IOException {
//		String fileName=null;
//		MultipartFile uploadFile = vo.getUploadFile();
		ServletContext context = request.getSession().getServletContext();
		String realPath = context.getRealPath(UPLOAD_DIRECTORY);
		String filename = vo.getUploadFile().getOriginalFilename();
	    System.out.println(realPath+" "+filename);        
	    byte[] bytes = vo.getUploadFile().getBytes();  
	    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
	         new File(realPath + File.separator + filename)));  
	    stream.write(bytes);  
	    stream.flush();  
	    stream.close();

//		File dir = new File(realPath);
//		if (!dir.exists()) dir.mkdirs();
//		if (!uploadFile.isEmpty()) {
//			String originalFileName = uploadFile.getOriginalFilename();
//			System.out.println(originalFileName);
//			String ext = FilenameUtils.getExtension(originalFileName);	//확장자 구하기
//			UUID uuid = UUID.randomUUID();	//UUID 구하기
//			fileName=uuid+"."+ext;
//			uploadFile.transferTo(new File(realPath + "/" + fileName));
//			
//		}
		vo.setPhoto(vo.getUploadFile().getOriginalFilename());
		int result = sqlSession.insert("Product.insertProduct", vo);
//		File targetFile = new File(realPath +"/"+ vo.getUploadFile().getOriginalFilename());
//		try {
//			InputStream fileStream = vo.getUploadFile().getInputStream();
//			FileUtils.copyInputStreamToFile(fileStream, targetFile);
//		}catch (IOException e){
//			System.out.println("aaaaaaa");
//			e.printStackTrace();
//		}
//		System.out.println(targetFile.getPath());
//		try {
//			byte varr[]= vo.getUploadFile().getBytes();
//			BufferedOutputStream bout= new BufferedOutputStream(new FileOutputStream(realPath+File.separator+vo.getUploadFile().getOriginalFilename()));
//			bout.write(varr);
//			bout.flush();
//			bout.close();
//		}catch(Exception e) {
//			System.out.println(e);
//		}
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
	
	public int thumbsupProduct(int pid) {
		int result = sqlSession.update("Product.thumbsupProduct", pid);
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
	
	public ProductVO getProduct(int pid) {
		ProductVO result = sqlSession.selectOne("Product.getProduct", pid);
		return result;
	}
	
	public List<String> getColumnList(){
		List<String> result = sqlSession.selectList("Product.getColumnList");
		return result;
	}
}

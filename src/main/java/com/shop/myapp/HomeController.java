package com.shop.myapp;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shop.myapp.product.ProductVO;
import com.shop.myapp.service.ProductServiceImpl;
import com.shop.myapp.service.UserService;
import com.shop.myapp.service.UserServiceImpl;
import com.shop.myapp.user.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	UserServiceImpl userService;
	
	@Inject
	UserService userServicee;
	
	@Autowired
	ProductServiceImpl productService;
	
	UserVO userVO;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session, Model model) {
//		model.addAttribute("username", userVO.getUsername() );
//		session.removeAttribute("username");
		if(userVO==null)
			session.invalidate();
		return "index";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String rehome() {
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
//	@RequestMapping(value ="/login/loginCheck", method = RequestMethod.POST)
//	public ModelAndView logincheck(@ModelAttribute UserVO vo, HttpSession session) {
//		boolean result = userServicee.loginCheck(vo, session);
//		ModelAndView mav = new ModelAndView();
//		if(result) {
//			mav.setViewName("home");
//			mav.addObject("msg", "success");
//		}else {
//			mav.setViewName("login");
//			mav.addObject("msg","failure");
//		}
//		return mav;
//	}

	@RequestMapping(value = "/allproduct", method = RequestMethod.GET)
	public String allproduct() {
		return "allproduct";
	}

	@RequestMapping(value = "/myproduct", method = RequestMethod.GET)
	public String myproduct() {
		return "myproduct";
	}
	
	@RequestMapping(value = "/addproduct", method = RequestMethod.GET)
	public String addproduct() {
		return "addproduct";
	}

	@RequestMapping(value = "/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo, Model model) {
		String returnURL = "";
		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
				
		UserVO loginvo = userService.getUser(vo);
		if (loginvo != null) {
			userVO = loginvo;
			System.out.println("로그인 성공!");
			session.setAttribute("login", loginvo);
			System.out.println(loginvo.getUsername());
			model.addAttribute("uid", loginvo.getUid());
			returnURL = "redirect:/";
		} else {
			System.out.println("로그인 실패!");
			returnURL = "redirect:/login";
		}
		return returnURL;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		// TODO : 로그인안됐다고 전달을 해줘야 할거임
		return "redirect:/";
	}

	@RequestMapping(value = "/signupOk", method = RequestMethod.POST)
	public String signup(UserVO vo) {
		if (userService.insertUser(vo) == 0) {
			System.out.println("회원가입 실패");
			return "";
		} else {
			System.out.println("회원가입 성공");
			return "redirect:/";
		}
	}
	
	@RequestMapping(value = "/addproductOk", method = RequestMethod.POST)
	public String addproduct(ProductVO vo, HttpServletRequest request) throws IllegalStateException, IOException {
		if (productService.insertProduct(vo, request)== 0) {
			System.out.println("상품추가 실패");
			return "";
		} else {
			System.out.println("상품추가 성공");
			return "redirect:/";
		}
	}
//
//	@RequestMapping(value = "/addproductOk", method = RequestMethod.POST)
//	public String addprouct() {
//		
//	}
}

package com.mz.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.common.Constant;
import com.mz.dao.ProductDao;
import com.mz.model.Product;
import com.mz.model.ProductFinder;

/**
 * Servlet implementation class SearchStudentServlet
 */
@WebServlet("/SearchStudentServlet")
public class SearchProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId = -1;
		int productPrice = -1;
	
		String nameStr = request.getParameter(Constant.PARAM_NAME).trim();
		String idStr = request.getParameter(Constant.PARAM_ID).trim();
		String priceStr = request.getParameter(Constant.PARAM_PRICE).trim();
		//String descriptionStr = request.getParameter(Constant.PARAM_DESCRIPTION).trim();
		//String imageNameStr = request.getParameter(Constant.PARAM_IMAGE_NAME).trim();
		
		String priceOperatorStr = request.getParameter("priceOperator").trim();
		String secondPriceStr = request.getParameter("secondPrice").trim();
		
		System.out.println(nameStr);
		System.out.println(idStr);
		System.out.println(priceStr);
		//System.out.println(descriptionStr);
		//System.out.println(imageNameStr);
		System.out.println(priceOperatorStr);
		System.out.println(secondPriceStr);
		if(!idStr.isEmpty()){	
			productId = Integer.parseInt(idStr);
		}
		if(!priceStr.isEmpty()){
			productPrice = Integer.parseInt(priceStr);
		}
		ProductFinder product = new ProductFinder();
		product.setProductId(productId);
		product.setProductName(nameStr);
		product.setProductPrice(productPrice);
		//product.setProductDescription(descriptionStr);
		//product.setProductImageName(imageNameStr);
		product.setPriceOperator(priceOperatorStr);
		product.setSecondPrice(secondPriceStr);
		
		ProductDao dao = new ProductDao();
		List<Product> products =dao.searchProduct(product);
		System.out.println(products);
		request.setAttribute("result", products);
		RequestDispatcher rd = request.getRequestDispatcher("searchProduct.jsp");
		rd.forward(request, response);
		
		
	}

}

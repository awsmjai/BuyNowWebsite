package com.mz.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.dao.ProductDao;
import com.mz.model.Product;

/**
 * Servlet implementation class GetProductId
 */
@WebServlet("/GetProductId")
public class GetProductId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productId = request.getParameter("id");
		ProductDao dao = new ProductDao();
		Product product= dao.getProduct(productId);
		
		request.setAttribute("productData", product);
		RequestDispatcher rd = request.getRequestDispatcher("updateProduct.jsp");
		rd.forward(request, response);
	}

}

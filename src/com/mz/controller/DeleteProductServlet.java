package com.mz.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mz.dao.ProductDao;
import com.mz.model.ProductFinder;

/**
 * Servlet implementation class DeleteProductServlet
 */
@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId = -1;
		String idStr=request.getParameter("id");
		System.out.println(idStr);
		if(!idStr.isEmpty()){	
			productId = Integer.parseInt(idStr);
		}

		
		
		ProductFinder product = new ProductFinder();
		product.setProductId(productId);
		
		ProductDao dao = new ProductDao();
		String message= dao.deleteProduct(product);
		
		request.setAttribute("deleteResult", message);
		RequestDispatcher rd = request.getRequestDispatcher("showProduct");
		rd.forward(request, response);
	}

}

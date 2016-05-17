package com.mz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mz.dao.ProductDao;
import com.mz.model.Product;



/**
 * Servlet implementation class SessionList
 */
@WebServlet("/SessionList")
public class ProductList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		List<Product> list = null;
		PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        ProductDao dao=new ProductDao();
        ArrayList<Product> list1=dao.getProduct();
        if(session.isNew()){
			  list=new ArrayList<Product>();
			  session.setAttribute("list", list);
      	}else{
			  list =(ArrayList<Product>) session.getAttribute("list");
			  session.setAttribute("list", list);
			 } 
        list =(ArrayList<Product>) session.getAttribute("list");
        int cart=list.size();
        request.setAttribute("list", list1);
        request.setAttribute("key", cart);
 		RequestDispatcher req= request.getRequestDispatcher("productDescription.jsp");
 		req.forward(request,response);
	}

	

}

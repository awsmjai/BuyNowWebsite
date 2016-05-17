package com.mz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mz.dao.ProductDao;
import com.mz.model.Product;

/**
 * Servlet implementation class AddToSession
 */
@WebServlet("/AddToSession")
public class AddToSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Product> list = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToSession() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		   
        PrintWriter out = response.getWriter();
        String ip=(String) request.getParameter("productId");
        System.out.println("IP:" + ip);
        HttpSession session=request.getSession();
        ProductDao dao=new ProductDao();
        Product pro=dao.getProduct(ip);
        System.out.println("product: "+pro);
        /*ArrayList<Product> list1=dao.getProduct(value1);*/
        ArrayList<Product> list1 = new ArrayList<>();
        list1.add(pro);
        Product product=list1.get(0);
        System.out.println("product2: "+product);
         if(list==null){
			  list=new ArrayList<Product>();
			  list.add(product);
		        session.setAttribute("list", list);
		  }else{
			  list =(ArrayList<Product>) session.getAttribute("list");
			  list.add(product);
		        session.setAttribute("list", list);
		 } 
         int cart=list.size();
         list =(ArrayList<Product>) session.getAttribute("list");
         request.setAttribute("list", list);
		   request.setAttribute("key", cart);
		   response.sendRedirect(response.encodeRedirectURL("productList"));
 		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

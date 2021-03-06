package com.mz.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mz.common.Constant;
import com.mz.dao.ProductDao;
import com.mz.model.ProductFinder;


@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String filePath;   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId = -1;
		int productPrice = -1;
		String idStr = null;
		String nameStr = null;
		String priceStr = null;
		String descriptionStr = null;
		String imageNameStr = null;
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);

        if (isMultipart) {
            // Create a factory for disk-based file items
            FileItemFactory factory = new DiskFileItemFactory();

            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

            try {
                // Parse the request
                
				List<FileItem> items = upload.parseRequest(request);
                Iterator iterator = items.iterator();
                while (iterator.hasNext()) {
                    FileItem item = (FileItem) iterator.next();
                    if (!item.isFormField()) {
                        imageNameStr = item.getName();  
                        System.out.println(imageNameStr);
                        String root = getServletContext().getRealPath("/");
                        File path = new File(root + "/product");
                        if (!path.exists()) {
                            boolean status = path.mkdirs();
                        }

                        File uploadedFile = new File(path + "/" + imageNameStr);
                        System.out.println(uploadedFile.getAbsolutePath());
                        item.write(uploadedFile);
                        
                        
                    }else{
                    	
                        
                        if(item.getFieldName().equals(Constant.PARAM_ID))
                        {   
                   		 idStr=item.getString();
                        }


                        if(item.getFieldName().equals(Constant.PARAM_NAME))
                        {   
                       	 nameStr=item.getString();
                        }



                        if(item.getFieldName().equals(Constant.PARAM_PRICE))
                        {   
                       	 priceStr=item.getString();
                        }
                        if(item.getFieldName().equals(Constant.PARAM_DESCRIPTION))
                        {   
                       	 descriptionStr=item.getString();
                        }
                    }
                }
            } catch (FileUploadException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
		
        }
		
		if(!idStr.isEmpty()){	
			productId = Integer.parseInt(idStr);
		}
		if(!priceStr.isEmpty()){
			productPrice = Integer.parseInt(priceStr);
		}
	
		System.out.println(imageNameStr);
        System.out.println(idStr);
		System.out.println(nameStr);
		System.out.println(priceStr);
		System.out.println(descriptionStr);
		
		ProductFinder product = new ProductFinder();
		product.setProductId(productId);
		product.setProductName(nameStr);
		product.setProductPrice(productPrice);
		product.setProductImageName(imageNameStr);
		product.setProductDescription(descriptionStr);
		
		ProductDao dao = new ProductDao();
		String message= dao.addProduct(product);
		
		request.setAttribute("result", message);
		RequestDispatcher rd = request.getRequestDispatcher("addProduct.jsp");
		rd.forward(request, response);
		
		
		
	}

	
}

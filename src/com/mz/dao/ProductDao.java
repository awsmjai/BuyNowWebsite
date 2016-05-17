package com.mz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mz.common.Constant;
import com.mz.connection.DbConnection;
import com.mz.model.Product;
import com.mz.model.ProductFinder;


public class ProductDao {
	Connection connection = null;
	DbConnection conn = new DbConnection();
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	String message = "Unable to Add!!!";
	String messageUpdate = "Unable to Update!!!";
	String messageDelete = "Unable to Delete!!!";

	public String addProduct(Product product) {
		connection = conn.createConnection();
		try {
			if (connection != null) {

				preparedStatement = connection.prepareStatement("insert into product "
						+ "(productId, productName, productPrice, productDiscription, productImageName) " + "VALUES ( ?, ?, ?, ?, ?) ");
				preparedStatement.setInt(1, product.getProductId());
				preparedStatement.setString(2, product.getProductName());
				preparedStatement.setInt(3, product.getProductPrice());
				preparedStatement.setString(4, product.getProductDescription());
				preparedStatement.setString(5, product.getProductImageName());
				preparedStatement.executeUpdate();
				message = "Product Added Successfully!!!";

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return message;
	}
	
	
	@SuppressWarnings("finally")
	public ArrayList<Product> getProduct() {
		ArrayList<Product> productList = new ArrayList<>();
		try {
			connection = conn.createConnection();
			preparedStatement = connection.prepareStatement("select * from product");
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Product product = new Product();
				product.setProductId(resultSet.getInt(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getInt(3));
				product.setProductDescription(resultSet.getString(4));
				product.setProductImageName(resultSet.getString(5));
				productList.add(product);
			}
			System.out.println(productList);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return productList;
		}
	}
	
	public List<Product> searchProduct(ProductFinder product) {
		Statement stmt = null;
		List<Product> productList = new ArrayList<>();
		int productId = product.getProductId();
		String productName = product.getProductName();
		int productPrice = product.getProductPrice();
		//String productDescription = product.getProductDescription();
		//String productImageName = product.getProductImageName();
		String priceOperator = product.getPriceOperator();
		String secondPrice = product.getSecondPrice();
		
		String query = "select * from product where ";
		StringBuilder queryBuilder=new StringBuilder(query);
		try {
			connection = conn.createConnection();
			// Student students = new Student();
			stmt = connection.createStatement();
			if(productId!=-1){	
				//query=query+Constant.QUERY_ROLL+rollNum+Constant.QUERY_AND;
				queryBuilder.append("productId='");
				queryBuilder.append(productId);
				queryBuilder.append(Constant.QUERY_AND);
			}
			if(!productName.isEmpty()){
				query=query+"productName='"+productName+Constant.QUERY_AND;
			}
			if(productPrice!=-1){
				if(priceOperator.equals("Between")){
					query=query+Constant.QUERY_PRICE_BETWEEN+productPrice+Constant.QUERY_BETWEEN_AND+secondPrice+Constant.QUERY_AND;
				}else{
					if(!priceOperator.equals("SelectPrice")){
					  query=query+"productPrice"+priceOperator+"'"+productPrice+Constant.QUERY_AND;
					}else{
					  query=query+"productPrice"+"="+"'"+productPrice+Constant.QUERY_AND;	
					}
				}
			}

			

			if(query.equals("select *from product where ")){
				query="select *from product";
			}else{
				query=query.substring(0,query.length()-5);
			}

			
			System.out.println("SQL : " +query);
			resultSet = stmt.executeQuery(query);
			System.out.println("ReslutSet: " + resultSet);
			System.out.println(resultSet);
			while (resultSet.next()) {
				ProductFinder product1 = new ProductFinder();
				product1.setProductId(resultSet.getInt(1));
				product1.setProductName(resultSet.getString(2));
				product1.setProductPrice(resultSet.getInt(3));
				product1.setProductDescription(resultSet.getString(4));
				product1.setProductImageName(resultSet.getString(5));
				productList.add(product1);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return productList;
	}
	
	
	@SuppressWarnings("finally")
	public Product getProduct(String productId) {
		Product product = null;
		Statement stmt=null;
		try {
			connection = conn.createConnection();
			// Student students = new Student();
			stmt = connection.createStatement();
			int id = Integer.parseInt(productId);
			System.out.println(id);
			resultSet = stmt.executeQuery("select * from product where productId = "+id+"");
			
			if(resultSet.next()) {
				product = new Product();
				product.setProductId(resultSet.getInt(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getInt(3));
				product.setProductDescription(resultSet.getString(4));
				product.setProductImageName(resultSet.getString(5));
			}
			System.out.println(product);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return product;
		}
	}
	
	
	
	
	
	
	
	
	
	
	public String updateProduct(Product product) {
		//connection = conn.createConnection();
		Product products = null;
		Statement stmt=null;
		String query = "update product set productId = "+product.getProductId()+", productName = '"+product.getProductName()+"', productPrice = "+product.getProductPrice()+", productDiscription = '"+product.getProductDescription()+"',";
		try {
			connection = conn.createConnection();
			// Student students = new Student();
			stmt = connection.createStatement();
			if(!product.getProductImageName().isEmpty()){
				query=query+" productImageName='"+product.getProductImageName()+"'";
			}else{
				query=query.substring(0,query.length()-1);
			}
			
			query =query +" where productId = "+product.getProductId()+"";
			System.out.println("query: "+query);
			int result =stmt.executeUpdate(query);
			System.out.println("result: " + result);
			messageUpdate = "Product Updated Successfully!!!";
			/*if (connection != null) {

				preparedStatement = connection.prepareStatement("update product set productId = ?, productName = ?, productPrice = ?, productDiscription = ?, productImageName = ? " + " where productId ="+product.getProductId()+"");
				preparedStatement.setInt(1, product.getProductId());
				preparedStatement.setString(2, product.getProductName());
				preparedStatement.setInt(3, product.getProductPrice());
				preparedStatement.setString(4, product.getProductDescription());
				preparedStatement.setString(5, product.getProductImageName());
				preparedStatement.executeUpdate();
				messageUpdate = "Product Updated Successfully!!!";

			}*/
			
           /* resultSet = stmt.executeQuery("select * from product where productId = "+product.getProductId()+"");
			
			if(resultSet.next()) {
				products = new Product();
				products.setProductId(resultSet.getInt(1));
				products.setProductName(resultSet.getString(2));
				products.setProductPrice(resultSet.getInt(3));
				products.setProductDescription(resultSet.getString(4));
				products.setProductImageName(resultSet.getString(5));
			}*/

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return messageUpdate;
	}
	
	
	
	public String deleteProduct(ProductFinder product) {
		Statement stmt = null;
		int productId = product.getProductId();
		
		String query = "delete from product where productId = "+productId+"";
		try {
			connection = conn.createConnection();
			// Student students = new Student();
			stmt = connection.createStatement();
			System.out.println("SQL : " +query);
			int result = stmt.executeUpdate(query);
			messageDelete = "Product Deleted Successfully!!!";
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return messageDelete;
	}

}

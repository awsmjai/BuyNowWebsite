package com.mz.connection;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbConnection {

	private static String driver;
	private static String url;
	private static String userName;
	private static String password;

	static{
		Properties properties=new Properties();
		InputStream inputStream=null;
		try {
			inputStream = new FileInputStream("C:\\softwares\\workspace\\BuyNowWebsite\\WebContent\\WEB-INF\\conf\\JDBC.properties");
			properties.load(inputStream);
			driver=properties.getProperty("driver");
			url=properties.getProperty("url");
			userName=properties.getProperty("username");
			password=properties.getProperty("password");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		finally{
			if(inputStream!=null){
				try {
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public Connection createConnection()
	{
		Connection connection = null;
		try{
			Class.forName(driver);
			connection=DriverManager.getConnection(url, userName, password);
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
}


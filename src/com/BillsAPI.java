package com;

import java.io.IOException;

import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException; 
import java.util.HashMap; 
import java.util.Map; 
import java.util.Scanner;


/**
 * Servlet implementation class BillsAPI
 */
@WebServlet("/BillsAPI")
public class BillsAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Bill itemObj = new Bill();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillsAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String output = itemObj.addBill(
				request.getParameter("accountId"),
				request.getParameter("joinDate"),
				request.getParameter("meterReadingBeforeDate"),
				request.getParameter("meterReadingBefore"),
				request.getParameter("meterReadingNowDate"),
				request.getParameter("meterReadingNow"),
				request.getParameter("noOfUntitsConsumed"),
				request.getParameter("chargeforelectricityConsume"),
				request.getParameter("adjustments"),
				Double.valueOf(request.getParameter("totalAmountDue")),
				request.getParameter("billDate"));
	 
				response.getWriter().write(output); 
				
//doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Map paras = getParasMap(request); 
		
		 String output = itemObj.updateBill(
			 paras.get("billId").toString(),
			 paras.get("accountId").toString(), 
			 paras.get("joinDate").toString(), 
			 paras.get("meterReadingBeforeDate").toString(), 
			 paras.get("meterReadingBefore").toString(),
			 paras.get("meterReadingNowDate").toString(), 
			 paras.get("meterReadingNow").toString(), 
			 paras.get("noOfUntitsConsumed").toString(),
			 paras.get("chargeforelectricityConsume").toString(), 
			 paras.get("adjustments").toString(), 
			 Double.valueOf(paras.get("totalAmountDue").toString()),
			 paras.get("billDate").toString()); 
		 
		 response.getWriter().write(output); 
	}
	
	
	

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 Map paras = getParasMap(request); 
		 String output = itemObj.deleteBill(paras.get("billid").toString()); 
		 response.getWriter().write(output); 
	}
	
	private static Map getParasMap(HttpServletRequest request) 
	{ 
		 Map<String, String> map = new HashMap<String, String>(); 
		try
		 { 
			 Scanner scanner = new Scanner(request.getInputStream(), "UTF-8"); 
			 String queryString = scanner.hasNext() ? 
			 scanner.useDelimiter("\\A").next() : ""; 
			 scanner.close(); 
			 String[] params = queryString.split("&"); 
			 for (String param : params) 
		 { 
			 
			 String[] p = param.split("="); 
			 map.put(p[0], p[1]); 
		 } 
			 
		 } 
			catch (Exception e) 
		 { 
		 } 
		return map; 
		}

}

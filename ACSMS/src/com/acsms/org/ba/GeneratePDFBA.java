package com.acsms.org.ba;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acsms.org.dao.GeneratePdfInvoice;
import com.acsms.org.vo.OrderDetailsVO;



/**
 * Servlet implementation class GeneratePDFBA
 */
@WebServlet("/GeneratePDFBA")
public class GeneratePDFBA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GeneratePDFBA() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Takes the order id to be closed
				String orderid = request.getParameter("orderid");
				System.out.println("The passed Order Id "+orderid );
				
				// DAO action for the Order ID: generate the PDF
				GeneratePdfInvoice pdfba;
				OrderDetailsVO invoiceVO=new OrderDetailsVO();
				try {
					pdfba = new GeneratePdfInvoice(invoiceVO);
					pdfba.searchOrder(orderid);
					//request.setAttribute("OrderClosingDetails", orderAction.getOrderClose());
					RequestDispatcher submitview = request
							.getRequestDispatcher("/intermediateClosing.jsp");
					submitview.forward(request, response);
				} catch (Exception e1) {
				
					e1.printStackTrace();
				}

	
	}

}

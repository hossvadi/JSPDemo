package com.JSPDemo.serveletDemo;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServeletDemo
 */
@WebServlet("/StudentServelet")
public class StudentServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// testing the get methods before implementations
		// String jsonResponse = "{\"message\": \"Success\"}";
		// this.outPutResponse(response,  jsonResponse, 200);
		
		// Step 1: set the content type
		response.setContentType("text/html");
		
		// Step 2: get the printwriter
		PrintWriter out = response.getWriter();
		
		// Step 3: generate the HTML content
		out.println("<html><body>");

		out.println("<h2>Confirmation!</h2>");
		out.println("<hr>");
		out.println("The student is confirmed: "
				+ request.getParameter("firstname") + " "
				+ request.getParameter("lastname")	);
		
		out.println("The student's country:" + request.getParameter("country"));
		
		out.println("Sex:" + request.getParameter("yourSex"));
		
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void outPutResponse(HttpServletResponse response, String payload, int status) {
		response.setHeader("Content-Type", "application/json");
		try {
			response.setStatus(status);
			if (payload != null) {
				OutputStream outputStream = response.getOutputStream();
				outputStream.write(payload.getBytes());
				outputStream.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}

package com.Calc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CalcServ1", urlPatterns = { "/CalcServ1" })
public class CalcServ1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String n1 = request.getParameter("num1");
		String n2 = request.getParameter("num2");
		String op = request.getParameter("btnsubmit");
		String result;

		try {
			double x = Double.parseDouble(n1);
			double y = Double.parseDouble(n2);
			double z = 0;

			switch (op) {
			case "+":
				z = x + y;
				break;
			case "-":
				z = x - y;
				break;
			case "x":
				z = x * y;
				break;
			case "/":
				if (y == 0)
					throw new ArithmeticException("Div by 0");
				z = x / y;
				break;
			case "%":
				z = x % y;
				break;
			}
			result = String.valueOf(z);

		} catch (Exception e) {
			result = "Error";
		}

		request.setAttribute("result", result);
		request.getRequestDispatcher("Calculator.jsp").forward(request, response);
	}
}


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import config.dbconnect;

/**
 * Servlet implementation class OneTimeBill
 */
@WebServlet("/OneTimeBill")
public class OneTimeBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	Connection conn = null;
	
    public OneTimeBill() {
        super();
        conn = dbconnect.connect();
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
		doGet(request, response);
		
		String 	PaymentID = request.getParameter("PaymentID");
		String AccountNo = (String) request.getSession().getAttribute("AccountNo");
		String 	BillAccountNo = request.getParameter("BillAccountNo");
		String PayeeCategory = request.getParameter("PayeeCategory");
		String ServiceProvider = request.getParameter("PayeeCategory");
		String Amount = request.getParameter("Amount");
		String PaymentDate = request.getParameter("PaymentDate");
		
		String sql = "INSERT INTO billpayments VALUES (?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, PaymentID);
			stmt.setString(2, AccountNo);
			stmt.setString(3, BillAccountNo);
			stmt.setString(4, PayeeCategory);
			stmt.setString(5, ServiceProvider);
			stmt.setString(4, Amount);
			stmt.setString(5, PaymentDate);
			
			int rs = stmt.executeUpdate();

            if (rs > 0) {
            
                 request.getRequestDispatcher("success-bill.jsp").forward(request, response);
                 } else {
                response.getWriter().println("Failed to add Bill payee.");
            }
            
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			try {
				if (conn != null) conn.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}

}



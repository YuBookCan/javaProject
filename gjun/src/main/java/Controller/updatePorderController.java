package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.porder.implPorder;
import Model.porder;


public class updatePorderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public updatePorderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("big5");
		
		int id=Integer.parseInt(request.getParameter("id"));
		porder p=new implPorder().queryId(id);
		p.setDesk(request.getParameter("desk"));
		p.setA(Integer.parseInt(request.getParameter("a")));
		p.setB(Integer.parseInt(request.getParameter("b")));
		p.setC(Integer.parseInt(request.getParameter("c")));
		
		p.getSum();
		
		new implPorder().update(p);
		response.sendRedirect("porder/update.jsp");
	}

}

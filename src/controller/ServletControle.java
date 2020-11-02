package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

@WebServlet("/ServletControle")
@MultipartConfig
public class ServletControle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletControle() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String dataNascimento = request.getParameter("datanascimento");
		String email = request.getParameter("email");
		HttpSession session = request.getSession();
		session.setAttribute("nome", nome);
		session.setAttribute("dataNascimento", dataNascimento);
		session.setAttribute("email", email);
		Part filePart = request.getPart("file2");
		String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
		InputStream fileContent = filePart.getInputStream();
		String file = "";
		
		StringWriter writer = new StringWriter();
		IOUtils.copy(fileContent, writer);
		file = writer.toString();
		
		session.setAttribute("fileName", fileName);
		session.setAttribute("file", file);
		
		RequestDispatcher dispacher= request.getRequestDispatcher("/upload.jsp");	
		dispacher.forward(request, response);
		
		
		
		
	}

}

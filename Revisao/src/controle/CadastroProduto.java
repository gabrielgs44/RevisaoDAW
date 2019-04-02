package controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.DaoProduto;
import dominio.Produto;


@WebServlet("/CadastroProduto")
public class CadastroProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String descricao = request.getParameter("descricao");
		int quantidade = Integer.parseInt(request.getParameter("quantidade"));
		float preco = Float.parseFloat(request.getParameter("preco"));
		
		Produto prod = new Produto(descricao, quantidade, preco);
		
		DaoProduto daoProd = new DaoProduto();
		daoProd.cadastrar(prod);
		
		response.sendRedirect("sucesso.jsp?desc="+ descricao + "&qtd=" + quantidade + "&preco=" + preco);
	
	}

}

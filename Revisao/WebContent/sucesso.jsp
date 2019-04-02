<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>Sucesso</title>
	</head>
	<body>
		<h2>Cadastro de Produto</h2>
		
		<p>O seguinte produto foi cadastrado com sucesso:</p>
		
		<%
		String descricao = request.getParameter("desc");
		int quantidade = Integer.parseInt(request.getParameter("qtd"));
		float preco = Float.parseFloat(request.getParameter("preco"));
		%>
		
		<p>
		Descrição: <%=descricao %><br />
		Quantidade: <%=quantidade %><br />
		Preço: <%=preco %>
		</p>
		
	</body>
</html>
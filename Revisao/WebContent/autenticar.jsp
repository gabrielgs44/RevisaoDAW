<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>Autenticação de Usuário</h2>
		
		<%
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		if ((usuario.compareTo("xpto") == 0) && (senha.compareTo("123456") == 0)){
		%>
		
		<form action="CadastroProduto" method="post">
		<fieldset>
			<legend>Cadastro de Produto</legend>
			
			<p><label for="descricao">Descrição: </label>
			<input type="text" id="descricao" name="descricao" />
			</p>
			
			<p><label for="quantidade">Quantidade: </label>
			<input type="text" id="quantidade" name="quantidade" />
			</p>
			
			<p><label for="preco">Preço: </label>
			<input type="text" id="preco" name="preco" />
			</p>
			
			<input type="submit" value="Cadastrar" />
		</fieldset>
		</form>
		
		<%
		}else {
			response.sendRedirect("index.html");
		}
		%>
		
		
	</body>
</html>
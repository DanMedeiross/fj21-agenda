<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,
		java.text.SimpleDateFormat.*,
		br.com.caelum.agenda.dao.*,
		br.com.caelum.agenda.modelo.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<table border="1">
		
			<tr>
				<th>Nome</th>
				<th>E-mail</th>
				<th>Endereço</th>
				<th>Data</th>
			</tr>
			
			<%
				ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			
			for (Contato contato : contatos){
			
			String dataFormatada = new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime());
			
			%>
			
			<tr>
				<td><%= contato.getNome() %></td>
				<td><%= contato.getEmail() %></td>
				<td><%= contato.getEndereco() %></td>
				<td><%= dataFormatada %></td>
				<%-- <td><%= contato.getDataNascimento().getTime() %></td> --%>
			</tr>
			
			<%
				}
			%>
		</table>
	</body>
</html>
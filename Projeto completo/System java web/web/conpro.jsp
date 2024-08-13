<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de produtos</title>
        <link href="css/tabela.css" rel="stylesheet">
    </head>
    <body>
        <%
            //Recebe o produto digitado dentro do formulario
            String n;
            n = request.getParameter("nome");
            try {
                Connection conecta;
                PreparedStatement st;
                Class.forName("com.mysql.cj.jdbc.Driver");
                conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco", "root", "");
                //Inserir os dados no banco de dados
                st = conecta.prepareStatement("SELECT * FROM produto WHERE nome LIKE ? ORDER By codigo"); //Para consultar o nome em especifico da tabela
                st.setString(1,"%" + n + "%");//Para definir  variavel "?" e consultar todos os semelhantes definidos na String "n".
                ResultSet rs = st.executeQuery();//Para executar o select, é necessario uma variavel para armazenar os dados do mysql(rs).
        %>
        <table> 
            <tr> 
                <th>Codigo</th> <th>Nome</th> <th>Marca</th> <th>Preço</th> <th>Exclusão</th> <th>Alteração</th>
            </tr>        
        <%
                while (rs.next()) { //Enquanto tiver linha, o mesmo sera continuadamente executado.
        %>
    <tr> 
        <td> <%= rs.getString("codigo")%> </td>
        <td> <%= rs.getString("nome")%> </td>
        <td> <%= rs.getString("marca")%> </td>
        <td> <%= rs.getString("preco")%> </td>
        <td><a href="excpro.jsp?codigo=<%= rs.getString("codigo")%>">Excluir</a></td>
        <td><a href="carregaprod.jsp?codigo=<%= rs.getString("codigo")%>">Alterar</a></td>
    </tr>         
        <%
            }
        %>
        </table>
        <%

        } catch (Exception x) {
            out.println("Menssagem de erro: " + x.getMessage());
        }
        %>
</body>
</html>

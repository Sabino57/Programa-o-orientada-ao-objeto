<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração de produtos</title>
    </head>
    <body>
        <%
          //Receber dados alterados do formulario carregaprod.jsp
            int c;
            String n, m;
            double p;
            c = Integer.parseInt(request.getParameter("codigo"));
            n = request.getParameter("nome");
            m = request.getParameter("marca");
            p = Double.parseDouble(request.getParameter("preco"));
            //Conectar ao banco de dados
            Connection conecta;
            PreparedStatement st; //para executar comandos dentro do banco de dados
            Class.forName("com.mysql.cj.jdbc.Driver");
            conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco", "root", "");
            //alterar dentro do banco de dados
            st = conecta.prepareStatement("UPDATE produto SET nome = ?, marca = ?, preco= ? WHERE codigo = ?");
            st.setString(1, n);
            st.setString(2, m);
            st.setDouble(3, p);
            st.setInt(4, c);
            st.executeUpdate(); //Executa update
            out.println("O produto: " + c +" foi alterado com sucesso");
        %>
    </body>
</html>

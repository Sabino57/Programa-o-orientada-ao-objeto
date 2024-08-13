<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salvar Produto</title>
    </head>
    <body>
        <%
            //Receber dados do formulario cadpro.html
            int c;
            String n, m;
            double p;
            c = Integer.parseInt(request.getParameter("codigo"));
            n = request.getParameter("nome");
            m = request.getParameter("marca");
            p = Double.parseDouble(request.getParameter("preco"));
            //Conexão com banco
            try {
                Connection conecta;
                PreparedStatement st;
                Class.forName("com.mysql.cj.jdbc.Driver");
                conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco", "root", "");
                //Inserir os dados no banco de dados
                st = conecta.prepareStatement("INSERT INTO produto VALUES(?, ?, ?, ?)");
                st.setInt(1, c);
                st.setString(2, n);
                st.setString(3, m);
                st.setDouble(4, p);
                st.executeUpdate(); //Executa o comando insert
                out.println("<p style='color:red;font-size:15px'> Produto cadastrado com sucesso </p>");
            } catch (Exception x) {
             String erro = x.getMessage();
             if(erro.contains("Duplicate entry")){
                out.println("<p style='color:red;font-size:15px'> Este produto já está cadastrado </p>");
            } else {
                out.println("<p style='color:red;font-size:15px'> Menssagem de erro: " + erro + "</p>");
            }
            }


        %>
    </body>
</html>

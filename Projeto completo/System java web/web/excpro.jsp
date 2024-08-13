<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir produtos.</title>
    </head>
    <body>
        <%
            // Recebe o código 
            int cod;
            cod = Integer.parseInt(request.getParameter("codigo"));
            try {
                //Conecta ao banco 
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco", "root", "");
                // Excluem o produto de código informado
                PreparedStatement st = conecta.prepareStatement("DELETE FROM produto WHERE codigo=?");
                st.setInt(1, cod);
                int resultado = st.executeUpdate(); // Executa o comando DELETE
                //Verifica se o produto foi ou não excluído
                if (resultado == 0) {
                    out.print("Este produto não está cadastrado");
                } else {
                    out.print("O produto de código " + cod + " foi excluído com sucesso");
                }
            } catch (Exception erro) {
                String mensagemErro = erro.getMessage();
                out.print("Entre em contato para mais informações " + mensagemErro);
            }

        %>
    </body>
</html>

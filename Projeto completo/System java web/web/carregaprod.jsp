<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!charset definir como = ISO-8859-1 para manter a acentuação>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Alteração de produtos</title>
    </head>
    <body>
        <%
            //Recebe o codigo do produto para alterção
            int c;
            c = Integer.parseInt(request.getParameter("codigo"));
            //Conectar ao banco de dados
            Connection conecta;
            PreparedStatement st; //para executar comandos dentro do banco de dados
            Class.forName("com.mysql.cj.jdbc.Driver");
            conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco", "root", "");
            //Buscar o produto pelo codigo
            st = conecta.prepareStatement("SELECT * FROM produto WHERE codigo = ?");
            st.setInt(1, c);
            ResultSet resultado = st.executeQuery(); //Executa o SELECT
            //Verificação de codigo
            if (!resultado.next()) { // "!" significa não e o ".next" significa a verificação da proxima linha / se dentro do resultado não tem proxima linha informa que não existe
                out.print("Este produto não foi encontrado");
            } else { //Se encontrou o produto, abre o formulario para alteração/ não pode deixar o campo (codigo) editavel, "reandonly" fixa o campo como apenas leitura
        %>
        <form method="post" action="alterar_produtos.jsp">
            <p>
                <label for="codigo">Código:</label>
                <input type="number" name="codigo" id="codigo" value="<%= resultado.getString("codigo") %>" readonly>
            </p>
            <p>
                <label for="nome">Nome do produto:</label>
                <input type="text" name="nome" id="nome" size="40" value="<%= resultado.getString("nome") %>">
            </p>  
            <p>
                <label for="marca">Marca:</label>
                <input type="text" name="marca" id="marca" value="<%= resultado.getString("marca") %>">
            </p> 
            <p>
                <label for="preco">Preço:</label>
                <input type="number" step="0.1" name="preco" id="preco" value="<%= resultado.getString("preco") %>">
            </p>              
            <p>
                <input type="submit" value="Salvar Alterações">   
            </p>
        </form>    
        <%
            }
        %>    
    </body>
</html>

<%-- 
    Document   : clientes
    Created on : 21/04/2018, 00:36:21
    Author     : junior
--%>

<%@page import="br.com.projeto04.fatecpg.poo.Bd"%>
<%@page import="br.com.projeto04.fatecpg.poo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if(request.getParameter("add")!= null){
      Cliente novoCliente = new Cliente();
      novoCliente.setNome(request.getParameter("nome"));
      novoCliente.setCpf(request.getParameter("cpf"));
      novoCliente.setRg(request.getParameter("rg"));
      novoCliente.setEmail(request.getParameter("email"));
      novoCliente.setTelefone(request.getParameter("telefone"));
      novoCliente.setEndereço(request.getParameter("endereco"));
      Bd.getClientes().add(novoCliente);
      response.sendRedirect(request.getRequestURI());
    }else if(request.getParameter("del")!=null){
      int i = Integer.parseInt(request.getParameter("i"));
      Bd.getClientes().remove(i);
      response.sendRedirect(request.getRequestURI());
    }else if(request.getParameter("alt")!=null){
      int indice = Integer.parseInt(request.getParameter("indice"));
      Bd.getClientes().remove(indice);
      
      Cliente alterarCliente = new Cliente();
      alterarCliente.setNome(request.getParameter("nome_alt"));
      alterarCliente.setCpf(request.getParameter("cpf_alt"));
      alterarCliente.setRg(request.getParameter("rg_alt"));
      alterarCliente.setEmail(request.getParameter("email_alt"));
      alterarCliente.setTelefone(request.getParameter("telefone_alt"));
      alterarCliente.setEndereço(request.getParameter("endereco_alt"));
      Bd.getClientes().add(indice, alterarCliente);

      response.sendRedirect(request.getRequestURI());
    }
%>   

<html>
    <head>
        <title>Cadastro de Clientes</title>
        <%@include file="WEB-INF/jspf/bootstrap_meta_and_fonts.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
<!-- Formulario -->  

    <!-- Grid markup Bootstrap -->
        <center><div class="card-group">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title h5body">Cadastro de Clientes</h5>
                    <p class="card-text pbody">Entre com os dados solicitados abaixo para criar uma lista de clientes.</p>
                    <br>
                    <form action="clientes.jsp">
                        <table>
                            <tr><td><input class="form-control" type="text" name="nome" placeholder="Nome"></td></tr>
                            <tr><td><input class="form-control" type="text" name="cpf" placeholder="CPF"></td></tr>
                            <tr><td><input class="form-control" type="text" name="rg" placeholder="RG"></td></tr>
                            <tr><td><input class="form-control" type="text" name="email" placeholder="E-mail"></td></tr>
                            <tr><td><input class="form-control" type="text" name="telefone" placeholder="Telefone"></td></tr>
                            <tr><td><input class="form-control" type="text" name="endereco" placeholder="Endereço"></td></tr>
                        </table>
                        <br><input class="bttbody btn btn-primary" type="submit" name="add" value="Adicionar">
                        </form>
                </div>
            </div>    
            <div class="card">    
                <div class="card-body">
                    <h5 class="card-title h5body">Alterar Lista</h5>
                    <p class="card-text pbody">Entre com o índice e os demais dados solicitados abaixo para alterar um item da lista de clientes.</p>
                    <form action="clientes.jsp">
                        <table>
                            <tr><td><input class="form-control" type="text" name="indice" placeholder="Índice"></td></tr>
                            <tr><td><input class="form-control" type="text" name="nome_alt" placeholder="Nome"></td></tr>
                            <tr><td><input class="form-control" type="text" name="cpf_alt" placeholder="CPF"></td></tr>
                            <tr><td><input class="form-control" type="text" name="rg_alt" placeholder="RG"></td></tr>
                            <tr><td><input class="form-control" type="text" name="email_alt" placeholder="E-mail"></td></tr>
                            <tr><td><input class="form-control" type="text" name="telefone_alt" placeholder="Telefone"></td></tr>
                            <tr><td><input class="form-control" type="text" name="endereco_alt" placeholder="Endereço"></td></tr>
                        </table>
                        <br><input class="bttbody btn btn-primary" type="submit" name="alt" value="Alterar">
                        </form>
                </div>
            </div>
        </div></center>
    
    <center><div>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Índice</th>
                    <th scope="col">Nome</th>
                    <th scope="col">CPF</th>
                    <th scope="col">RG</th>
                    <th scope="col">E-mail</th>
                    <th scope="col">Telefone</th>
                    <th scope="col">Endereço</th>
                    <th scope="col">Excluir</th>
                </tr>
            </thead>

            <%for (int i = 0; i < Bd.getClientes().size(); i++) {%>

            <tbody>
                <tr>
                    <td><%= i %></td>
                    <td><%= Bd.getClientes().get(i).getNome() %></td>
                    <td><%= Bd.getClientes().get(i).getCpf() %></td>
                    <td><%= Bd.getClientes().get(i).getRg() %></td>
                    <td><%= Bd.getClientes().get(i).getEmail() %></td>
                    <td><%= Bd.getClientes().get(i).getTelefone() %></td>
                    <td><%= Bd.getClientes().get(i).getEndereço() %></td>
                    <td>
                        <form>
                            <input type="hidden" name="i" value="<%= i %>"/>
                            <input type="submit" name="del" value="Excluir"/>
                        </form>
                    </td>
                </tr>
            <% } %>    
            </tbody>
        </table>
    </div></center>
    
        <%@include file="WEB-INF/jspf/footer.jspf"%>
        
        <%@include file="WEB-INF/jspf/bootstrap_body_end.jspf"%>
    </body>
</html>

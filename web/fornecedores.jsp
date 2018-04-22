


<%@page import="br.com.projeto04.fatecpg.poo.Bd"%>
<%@page import="br.com.projeto04.fatecpg.poo.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
     if(request.getParameter("add")!= null){
        Fornecedor  f = new Fornecedor();
        f.setNome(request.getParameter("nome"));
        f.setCnpj(request.getParameter("cnpj"));
        f.setEmail(request.getParameter("email"));
        f.setTelefone(request.getParameter("telefone"));
        f.setEndereço(request.getParameter("endereco"));
        f.setRazaoSocial(request.getParameter("razao"));
        Bd.getFornecedores().add(f);
        response.sendRedirect(request.getRequestURI());
   
    }else if(request.getParameter("del")!=null){
      int i = Integer.parseInt(request.getParameter("i"));
      Bd.getFornecedores().remove(i);
      response.sendRedirect(request.getRequestURI());
    }else if(request.getParameter("alt")!=null){
      int indice = Integer.parseInt(request.getParameter("indice"));
      Bd.getFornecedores().remove(indice);
      
      Fornecedor alterarFornecedor = new Fornecedor();
      alterarFornecedor.setNome(request.getParameter("nome_alt"));
      alterarFornecedor.setRazaoSocial(request.getParameter("razao_alt"));
      alterarFornecedor.setCnpj(request.getParameter("cnpj_alt"));
      alterarFornecedor.setEmail(request.getParameter("email_alt"));
      alterarFornecedor.setTelefone(request.getParameter("telefone_alt"));
      alterarFornecedor.setEndereço(request.getParameter("endereco_alt"));
      Bd.getFornecedores().add(indice, alterarFornecedor);

      response.sendRedirect(request.getRequestURI());
    }
%>   

<html>
    <head>
        <title>Cadastro de Fornecedores</title>
        <%@include file="WEB-INF/jspf/bootstrap_meta_and_fonts.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
<!-- Formulario -->  

    <!-- Grid markup Bootstrap -->
        <center><div class="card-group">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title h5body">Cadastro de Fornecedores</h5>
                    <p class="card-text pbody">Insira os dados solicitados para criar uma lista de fornecedores.</p>
                    <form action="fornecedores.jsp">
                        <table>
                            <tr><td><input class="form-control" type="text" name="nome" placeholder="Nome da Empresa"></td></tr>
                            <tr><td><input class="form-control" type="text" name="razao" placeholder="Razão Social"></td></tr>
                            <tr><td><input class="form-control" type="text" name="cnpj" placeholder="CNPJ"></td></tr>
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
                    <p class="card-text pbody">Digite o índice do campo que deseja alterar e insira novamente os dados para gerar a alteração.</p>
                    <form action="fornecedores.jsp">
                        <table>
                            <tr><td><input class="form-control" type="text" name="indice" placeholder="Índice"></td></tr>
                            <tr><td><input class="form-control" type="text" name="nome_alt" placeholder="Nome da Empresa"></td></tr>
                            <tr><td><input class="form-control" type="text" name="razao_alt" placeholder="Razão Social"></td></tr>
                            <tr><td><input class="form-control" type="text" name="cnpj_alt" placeholder="CNPJ"></td></tr>
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
                    <th scope="col">Empresa</th>
                    <th scope="col">Razaão Social</th>
                    <th scope="col">CNPJ</th>
                    <th scope="col">E-mail</th>
                    <th scope="col">Telefone</th>
                    <th scope="col">Endereço</th>
                    <th scope="col">Excluir</th>
                </tr>
            </thead>

            <%for (int i = 1; i < Bd.getFornecedores().size(); i++) {%>

            <tbody>
                <tr>
                    <td><%= i %></td>
                    <td><%= Bd.getFornecedores().get(i).getNome() %></td>
                    <td><%= Bd.getFornecedores().get(i).getRazaoSocial() %></td>
                    <td><%= Bd.getFornecedores().get(i).getCnpj() %></td>
                    <td><%= Bd.getFornecedores().get(i).getEmail() %></td>
                    <td><%= Bd.getFornecedores().get(i).getTelefone() %></td>
                    <td><%= Bd.getFornecedores().get(i).getEndereço() %></td>
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

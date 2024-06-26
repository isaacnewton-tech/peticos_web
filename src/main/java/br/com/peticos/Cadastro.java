package br.com.peticos;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.util.Objects;

public class Cadastro extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String confirmarSenha = request.getParameter("confirmarSenha");
        String telefone = request.getParameter("telefone");
        String dt_nascimento = request.getParameter("dtNascimento");
        String tipo_perfil = request.getParameter("tipoPerfil");
        String genero = request.getParameter("genero");

        System.out.println(nome);
        System.out.println(sobrenome);
        System.out.println(username);
        System.out.println(email);
        System.out.println(senha);
        System.out.println(confirmarSenha);
        System.out.println(telefone);
        System.out.println(dt_nascimento);
        System.out.println(tipo_perfil);
        System.out.println(genero);

        if (!Objects.equals(senha, confirmarSenha)){
            response.sendRedirect("/cadastro/cadastro.html?erro=true");
            return;
        }

        Database db = new Database();
        Connection conn = db.connect_to_db("dbPeticos");

        String query = String.format("SELECT * FROM usuario WHERE username = '%s'", username);
        String[][] resultado = db.query(conn, query);
        if (resultado.length>0){
            System.out.println("Nome de usuário já utilizado!");
            response.sendRedirect("/cadastro/cadastro.html?erro=usedUsername");
            return;
        }
        query = String.format("SELECT * FROM usuario WHERE email = '%s'", email);
        resultado = db.query(conn, query);
        if (resultado.length>0){
            System.out.println("Já existe uma conta com este e-mail!");
            response.sendRedirect("/cadastro/cadastro.html?erro=usedEmail");
            return;
        }

        Usuario novoUsuario;
        if (!Objects.equals(telefone, "")){
            query = "INSERT INTO usuario(nome, sobrenome, username, email, senha, telefone, dt_nascimento, tipo_perfil, genero) VALUES" +
                    String.format("('%s','%s','%s','%s','%s','%s','%s','%s','%s')", nome, sobrenome, username, email, senha, telefone, dt_nascimento, tipo_perfil, genero);
            novoUsuario = new Usuario(nome, sobrenome, username, email, senha, telefone, dt_nascimento, tipo_perfil, genero);
        } else {
            query = "INSERT INTO usuario(nome, sobrenome, username, email, senha, dt_nascimento, tipo_perfil, genero) VALUES" +
                    String.format("('%s','%s','%s','%s','%s','%s','%s','%s')", nome, sobrenome, username, email, senha, dt_nascimento, tipo_perfil, genero);
            novoUsuario = new Usuario(nome, sobrenome, username, email, senha, dt_nascimento, tipo_perfil, genero);
        }

        System.out.println(query);
        try{
            db.cud(conn, query);
        } catch (Exception e){
            System.out.println(e);
        }
        HttpSession session = request.getSession();
        session.setAttribute("user", novoUsuario);
        response.addCookie(new jakarta.servlet.http.Cookie("JSESSIONID", session.getId()));
        response.sendRedirect("/home.jsp");
    }
}

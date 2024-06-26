package br.com.peticos;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.util.Objects;

public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String senha = request.getParameter("senha");

        Database db = new Database();
        Connection conn = db.connect_to_db("dbPeticos");

        String query = String.format("SELECT id FROM usuario WHERE username = '%s'",username);
        String[][] retorno = db.query(conn, query);

        if (retorno.length<1){
            System.out.println("Nome de usuário não existente!");
            response.sendRedirect("/login/login.html?erro=incorrectUsername");
            return;
        }

        query = String.format("SELECT CASE WHEN username='%s' AND senha='%s' THEN true ELSE false END FROM usuario WHERE username='%s'", username, senha, username);
        retorno = db.query(conn, query);
        if (Objects.equals(retorno[0][0], "f")){
            response.sendRedirect("/login/login.html?erro=incorrectSenha");
            return;
        }

        String[][] userInfo = UserInfo.getUserInfo(username);
        Usuario user;
        if (Objects.equals(userInfo[0][5], "null")){
            user = new Usuario(userInfo[0][0], userInfo[0][1], userInfo[0][2], userInfo[0][3], userInfo[0][4], userInfo[0][6], userInfo[0][7], userInfo[0][8]);
        }
        else {
            user = new Usuario(userInfo[0][0], userInfo[0][1], userInfo[0][2], userInfo[0][3], userInfo[0][4], userInfo[0][5], userInfo[0][6], userInfo[0][7], userInfo[0][8]);
        }

        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        response.addCookie(new jakarta.servlet.http.Cookie("JSESSIONID", session.getId()));
        response.sendRedirect("/home.jsp");
    }
}

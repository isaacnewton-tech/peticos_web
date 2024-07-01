package br.com.peticos;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.util.Objects;

public class UpdateUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String novoCampo = request.getParameter("novoParametro");
        String campoDB = request.getParameter("campoDB");
        String username = request.getParameter("username");

        System.out.println(novoCampo);

        Database db = new Database();
        Connection conn = db.connect_to_db("dbPeticos");
        String query = String.format("UPDATE usuario SET %s = '%s' WHERE username = '%s'", campoDB, novoCampo, username);
        System.out.println(query);

        db.query(conn, query);

        String[][] userInfo = UserInfo.getUserInfo(username);
        Usuario user;
        if (Objects.equals(userInfo[0][5], "null")){
            user = new Usuario(userInfo[0][0], userInfo[0][1], userInfo[0][2], userInfo[0][3], userInfo[0][4], userInfo[0][6], userInfo[0][7], userInfo[0][8]);
        }
        else {
            user = new Usuario(userInfo[0][0], userInfo[0][1], userInfo[0][2], userInfo[0][3], userInfo[0][4], userInfo[0][5], userInfo[0][6], userInfo[0][7], userInfo[0][8]);
        }
        HttpSession session = request.getSession(false);
        session.setAttribute("user", user);
    }
}

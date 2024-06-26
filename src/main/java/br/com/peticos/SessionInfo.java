package br.com.peticos;

import com.google.gson.Gson;
import jakarta.servlet.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;


public class SessionInfo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        if (session != null) {
            Usuario user = (Usuario) session.getAttribute("user");
            if (user != null) {
                response.getWriter().write(new Gson().toJson(user));
                return;
            }
        }
        response.getWriter().write(new Gson().toJson("Usuário não logado"));
    }
}


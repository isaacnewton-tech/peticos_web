package br.com.peticos;

import java.sql.Connection;

public class UserInfo {
    public static String[][] getUserInfo(String username){
        Database db = new Database();
        Connection conn = db.connect_to_db("dbPeticos");


        String query = String.format("SELECT nome, sobrenome, username, email, senha, telefone, dt_nascimento, tipo_perfil, genero FROM usuario WHERE username='%s'", username);
        return db.query(conn, query);
    }
}

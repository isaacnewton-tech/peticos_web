package br.com.peticos;

import java.util.Date;

public class Usuario {
    private String nome;
    private String sobrenome;
    private String username;
    private String email;
    private String senha;
    private String telefone;
    private String dtNascimento;
    private String tipoPerfil;
    private String genero;

    public Usuario(String nome, String sobrenome, String username, String email, String senha, String telefone, String dtNascimento, String tipoPerfil, String genero) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.username = username;
        this.email = email;
        this.senha = senha;
        this.telefone = telefone;
        this.dtNascimento = dtNascimento;
        this.tipoPerfil = tipoPerfil;
        this.genero = genero;
    }
    public Usuario(String nome, String sobrenome, String username, String email, String senha, String dtNascimento, String tipoPerfil, String genero) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.username = username;
        this.email = email;
        this.senha = senha;
        this.telefone = "Nenhum telefone";
        this.dtNascimento = dtNascimento;
        this.tipoPerfil = tipoPerfil;
        this.genero = genero;
    }

    public String getNome() {
        return nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getSenha() {
        return senha;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getDtNascimento() {
        return dtNascimento;
    }

    public String getTipoPerfil() {
        return tipoPerfil;
    }

    public String getGenero() {
        return genero;
    }

    @Override
    public String toString() {
        return "Usuario{" +
                "nome='" + nome + '\'' +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", senha='" + senha + '\'' +
                ", telefone='" + telefone + '\'' +
                ", dtNascimento=" + dtNascimento +
                ", tipoPerfil='" + tipoPerfil + '\'' +
                ", genero='" + genero + '\'' +
                '}';
    }
}

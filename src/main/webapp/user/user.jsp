<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Informações de usuário - Peticos</title>
    </head>
    <body>
        <p>Nome: </p><p id="nome"></p>
        <p>Sobrenome: </p><p id="sobrenome"></p>
        <p>Usuário: </p><p id="username"></p>
        <p>E-mail: </p><p id="email"></p>
        <p>Senha: </p><p id="senha"></p>
        <p>Telefone: </p><p id="telefone"></p>
        <p>Data de nascimento: </p><p id="dtNascimento"></p>
        <p>Tipo perfil: </p><p id="tipoPerfil"></p>
        <p>Gênero: </p><p id="genero"></p>

        <script>
            document.addEventListener('DOMContentLoaded', function() {
                fetch('/sessionInfo')
                    .then(response => response.json())
                    .then(user => {
                        if (user === "Usuário não logado") {
                            window.location.href="/home.jsp";
                        } else {
                            const nome = document.getElementById("nome");
                            const sobrenome = document.getElementById("sobrenome");
                            const usuario = document.getElementById("username");
                            const email = document.getElementById("email");
                            const senha = document.getElementById("senha");
                            const telefone = document.getElementById("telefone");
                            const dtNascimento = document.getElementById("dtNascimento");
                            const tipoPerfil = document.getElementById("tipoPerfil");
                            const genero = document.getElementById("genero");

                            nome.textContent = user.nome;
                            sobrenome.textContent = user.sobrenome;
                            usuario.textContent = user.username;
                            email.textContent = user.email;
                            senha.textContent = user.senha;
                            telefone.textContent = user.telefone;
                            dtNascimento.textContent = user.dtNascimento;
                            tipoPerfil.textContent = user.tipoPerfil;
                            genero.textContent = user.genero;


                        }
                    })
                    .catch(error => console.error('Erro:', error));
            });
        </script>
    </body>
</html>

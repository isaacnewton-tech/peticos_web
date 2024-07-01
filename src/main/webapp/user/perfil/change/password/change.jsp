<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Alterar sua senha - Peticos</title>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" type="image/x-icon" href="/peticosfavIcon.ico">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lilita+One&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<header class="flex" hidden="hidden">
    <div id="app" class="flex shadow">
        <div id="logo-container">
            <div class="logo flex">
                <a href="/home.jsp">
                </a>
                <img src="/images/peticoslogo.png" alt="">
            </div>
            <span id="logo-milk">
                          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38.75 40">
                              <path d="M 0 0 C 0 11.3334 0 22.6666 0 40 C 4 40 6 40 8 28 C 10 16 20 11 25 9 C 30 7 36 4 36 0 M 31 11 C 32 10 37 9 38 11 C 39 13 39 13 38 15 C 37 17 35 17 33 16 C 31 15 29 13 31 11" fill="#000000"/>
                          </svg>
                    </span>
        </div>
        <div id="perfilTitle">
            <p id="pPerfilTitle">Senha</p>
        </div>
        <div class="flex nolist" id="loginDiv">
            <div id="user-options-container">
                <a href="/home.jsp" onclick="return false" style="cursor: default" id="user-button">
                    <svg width="30" height="30" viewbox="0 0 24 24" fill="none" id="svg-user" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.47581 2 2 6.47581 2 12C2 17.5242 6.47581 22 12 22C17.5242 22 22 17.5242 22 12C22 6.47581 17.5242 2 12 2ZM12 5.87097C13.9597 5.87097 15.5484 7.45968 15.5484 9.41935C15.5484 11.379 13.9597 12.9677 12 12.9677C10.0403 12.9677 8.45161 11.379 8.45161 9.41935C8.45161 7.45968 10.0403 5.87097 12 5.87097ZM12 19.7419C9.63306 19.7419 7.5121 18.6694 6.09274 16.9919C6.85081 15.5645 8.33468 14.5806 10.0645 14.5806C10.1613 14.5806 10.2581 14.5968 10.3508 14.625C10.875 14.7944 11.4234 14.9032 12 14.9032C12.5766 14.9032 13.129 14.7944 13.6492 14.625C13.7419 14.5968 13.8387 14.5806 13.9355 14.5806C15.6653 14.5806 17.1492 15.5645 17.9073 16.9919C16.4879 18.6694 14.3669 19.7419 12 19.7419Z" fill="#FFFFFF"></path></svg>
                    <p id="user-info">nome_de_perfil</p>
                </a>
                <div id="opcoes-container">
                    <div id="opcoes-user">
                        <ul>
                            <li><a href="/user/perfil/perfil.jsp">Meu Perfil</a></li>
                            <li><a>Ajuda</a></li>
                            <li><a>Configurações</a></li>
                            <li><a href="/logout">Sair</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="form-container">
    <form action="/updateUser" method="post" id="forms">
        <p>Alterar sua senha</p>
        <div>
            <label for="senhaAntiga">Digite sua antiga senha</label>
            <input type="password" name="senhaAntiga" id="senhaAntiga" required placeholder="Antiga senha">
        </div>

        <div>
            <label for="novaSenha">Digite sua nova senha</label>
            <input type="password" name="novaSenha" id="novaSenha" required placeholder="Nova senha">
        </div>

        <div class="erro" id="erro">

        </div>
        <input type="submit" value="Salvar" id="submitBtn">
    </form>
</div>

<script>
    let nomeDeUsuario;
    let senhaDoUsuario;

    fetch('/sessionInfo')
        .then(response => response.json())
        .then(user => {
            if (user === "Usuário não logado") {
                window.location.href="/home.jsp";
            } else {
                $('#user-info').text(user.username);
                nomeDeUsuario = user.username;
                senhaDoUsuario = user.senha;
            }
        })
        .catch(error => console.error('Erro:', error));
    document.addEventListener("DOMContentLoaded", function (){
        let campoDB = 'senha';

        $('#forms').on('submit', function (event){
            console.log("Submit")
            event.preventDefault();
            document.getElementById('submitBtn').disabled = true;
            document.getElementById('submitBtn').style.cursor = 'wait';

            let senhaAntiga = document.getElementById('senhaAntiga').value
            let senhaNova = document.getElementById('novaSenha').value

            console.log(senhaAntiga)
            console.log(senhaNova)

            if (senhaDoUsuario===senhaNova){
                console.log("Senha igual a antiga")
                document.getElementById('erro').innerText = "A sua nova senha não pode ser igual a antiga!"
                setTimeout(function (){
                    document.getElementById('erro').innerText = ""
                }, 2000);
                document.getElementById('submitBtn').disabled = false;
                document.getElementById('submitBtn').style.cursor = 'pointer';
            } else if (senhaAntiga!==senhaDoUsuario) {
                console.log("Senha incorreta!")
                document.getElementById('erro').innerText = "Senha antiga incorreta!"
                setTimeout(function (){
                    document.getElementById('erro').innerText = ""
                }, 2000);
                document.getElementById('submitBtn').disabled = false;
                document.getElementById('submitBtn').style.cursor = 'pointer';
            } else {
                document.getElementById('erro').innerText = "Alterando a senha..."
                console.log("Alterando a senha..")
                $.ajax({
                    url: '/updateUser',
                    data: {
                        novoParametro: senhaNova,
                        campoDB: campoDB,
                        username: nomeDeUsuario
                    },
                    type: 'POST',
                    success: function() {
                        document.getElementById('erro').innerText = "Senha alterada com sucesso!"
                        setTimeout(function (){
                            document.getElementById('erro').innerText = "";
                            window.location = "/user/perfil/perfil.jsp"
                        }, 2000)
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        document.getElementById('erro').innerText = "Não foi possível alterar sua senha!"
                        setTimeout(function (){
                            document.getElementById('erro').innerText = "";
                            console.error('Erro:', textStatus, errorThrown);
                            console.error('Detalhes do Erro:', jqXHR);
                            alert('Erro ao atualizar o usuário: ' + textStatus + ' ' + errorThrown);
                            window.location = "/user/perfil/perfil.jsp"
                        }, 2000)
                    }
                });
            }
        });
    });
</script>
</body>
</html>

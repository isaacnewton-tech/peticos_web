<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Seu perfil - Peticos</title>
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
            <p id="pPerfilTitle"></p>
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
    <form id="formUpdate">
        <div>
            <label id="inputLabel" for="mainInput">Campo</label>
            <input type="text" id="mainInput" name="novoParametro" required>
        </div>
        <input type="submit" value="Salvar" id="submitBtn">
    </form>
</div>
<script>
    // Função para obter os parâmetros da URL
    function getQueryParams() {
        var params = {};
        var queryString = window.location.search.substring(1);
        var regex = /([^&=]+)=([^&]*)/g;
        var m;
        while (m = regex.exec(queryString)) {
            params[decodeURIComponent(m[1])] = decodeURIComponent(m[2]);
        }
        return params;
    }

    $(document).ready(function () {
        let nomeDeUsuario;
        let campoDB;

        fetch('/sessionInfo')
            .then(response => response.json())
            .then(user => {
                if (user === "Usuário não logado") {
                    window.location.href="/home.jsp";
                } else {
                    $('#user-info').text(user.username);
                    nomeDeUsuario = user.username;
                }
            })
            .catch(error => console.error('Erro:', error));

        var params = getQueryParams();
        const tituloDaPagina = $('#pPerfilTitle');
        const mainInput = $('#mainInput');
        let inputDB;

        tituloDaPagina.text(params.field);

        switch (params.field) {
            case 'Nome':
                inputDB = 'nome';
                break;
            case 'Sobrenome':
                inputDB = 'sobrenome';
                break;
            case 'Data de nascimento':
                inputDB = 'dt_nascimento';
                break;
            case 'Senha':
                window.location = "/user/perfil/change/password/change.jsp"
                break;
            case 'Nome de usuário':
                inputDB = 'username';
                break;
            case 'E-mail':
                inputDB = 'email';
                break;
            case 'Tipo de Perfil':
                inputDB = 'tipo_perfil';
                break;
            case 'Gênero':
                inputDB = 'genero';
                break;
            default:
                window.location = "/user/perfil/perfil.jsp";
                return;
        }

        $('#inputLabel').text(params.field);
        mainInput.val(params.currentField);
        mainInput.attr("type", params.fieldType);
        campoDB = inputDB;

        $('#formUpdate').on('submit', function (event) {
            event.preventDefault();
            document.getElementById('submitBtn').disabled = true;
            document.getElementById('submitBtn').style.cursor = 'wait'

            $.ajax({
                url: '/updateUser',
                data: {
                    novoParametro: mainInput.val(),
                    campoDB: campoDB,
                    username: nomeDeUsuario
                },
                type: 'POST',
                success: function(response) {
                    window.location = "/user/perfil/perfil.jsp"
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.error('Erro:', textStatus, errorThrown);
                    console.error('Detalhes do Erro:', jqXHR);
                    alert('Erro ao atualizar o usuário: ' + textStatus + ' ' + errorThrown);
                    window.location = "/user/perfil/perfil.jsp"
                }
            });
        });
    });
</script>
</body>
</html>

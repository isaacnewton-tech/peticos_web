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
</head>
<body>
<header class="flex">
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
            <p>Meu Perfil</p>
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
<div id="perfil-container">
    <div id="perfil">
        <div class="perfil-region" id="informacoes-pessois">
            <div class="region-title">
                <p>Informações Pessoais</p>
            </div>
            <div class="region-infos">
                <a class="info-container" id="nomeA">
                    <hr>
                    <div>
                        <div class="info-title">Nome</div>
                        <div class="info" id="nome"></div>
                        <div class="change-info">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="#874a2e" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9 5 7 7-7 7"/>
                              </svg>
                        </div>
                    </div>
                    <hr>
                </a>
                <a class="info-container" id="sobrenomeA">
                    <hr>
                    <div>
                        <div class="info-title">Sobrenome</div>
                        <div class="info" id="sobrenome"></div>
                        <div class="change-info">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="#874a2e" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9 5 7 7-7 7"/>
                              </svg>
                        </div>
                    </div>
                    <hr>
                </a>
                <a class="info-container" id="dtNascimentoA">
                    <hr>
                    <div>
                        <div class="info-title">Data de nascimento</div>
                        <div class="info" id="dtNascimento"></div>
                        <div class="change-info">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="#874a2e" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9 5 7 7-7 7"/>
                              </svg>
                        </div>
                    </div>
                    <hr>
                </a>
                <a class="info-container" id="senhaA">
                    <hr>
                    <div>
                        <div class="info-title">Senha</div>
                        <div class="info">&#x2022 &#x2022 &#x2022 &#x2022 &#x2022</div>
                        <div class="change-info">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="#874a2e" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9 5 7 7-7 7"/>
                              </svg>
                        </div>
                    </div>
                    <hr>
                </a>
            </div>
        </div>
        <div class="perfil-region" id="informacoes-de-perfil">
            <div class="region-title">
                <p>Informações de Perfil</p>
            </div>
            <div class="region-infos">
                <a class="info-container" id="usernameA">
                    <hr>
                    <div>
                        <div class="info-title">Nome de usuário</div>
                        <div class="info" id="username"></div>
                        <div class="change-info">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="#874a2e" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9 5 7 7-7 7"/>
                              </svg>
                        </div>
                    </div>
                    <hr>
                </a>
                <a class="info-container" id="emailA">
                    <hr>
                    <div>
                        <div class="info-title">E-mail</div>
                        <div class="info" id="email"></div>
                        <div class="change-info">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="#874a2e" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9 5 7 7-7 7"/>
                              </svg>
                        </div>
                    </div>
                    <hr>
                </a>
                <a class="info-container" id="tipoPerfilA">
                    <hr>
                    <div>
                        <div class="info-title">Tipo Perfil</div>
                        <div class="info" id="tipoPerfil"></div>
                        <div class="change-info">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="#874a2e" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9 5 7 7-7 7"/>
                              </svg>
                        </div>
                    </div>
                    <hr>
                </a>
                <a class="info-container" id="generoA">
                    <hr>
                    <div>
                        <div class="info-title">Gênero</div>
                        <div class="info" id="genero"></div>
                        <div class="change-info">
                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="#874a2e" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9 5 7 7-7 7"/>
                              </svg>
                        </div>
                    </div>
                    <hr>
                </a>
            </div>
        </div>
    </div>
</div>
<script>
    function formatarData(data){
        // 2024-06-11
        const ano = data.substring(0, 4);
        const mes = data.substring(5,7);
        const dia = data.substring(8);

        return dia+"/"+mes+"/"+ano;
    }

    document.addEventListener('DOMContentLoaded', function() {
        fetch('/sessionInfo')
            .then(response => response.json())
            .then(user => {
                if (user === "Usuário não logado") {
                    window.location.href="/home.jsp";
                } else {
                    const userInfo = document.getElementById("user-info")
                    const nome = document.getElementById("nome");
                    const sobrenome = document.getElementById("sobrenome");
                    const usuario = document.getElementById("username");
                    const email = document.getElementById("email");
                    const dtNascimento = document.getElementById("dtNascimento");
                    const tipoPerfil = document.getElementById("tipoPerfil");
                    const genero = document.getElementById("genero");

                    userInfo.innerText = user.username;
                    nome.innerText = user.nome;
                    sobrenome.innerText = user.sobrenome;
                    usuario.innerText = "@"+user.username;
                    email.innerText = user.email;
                    dtNascimento.innerText = formatarData(user.dtNascimento);

                    if (user.tipoPerfil === "NO"){
                        tipoPerfil.innerText = "Usuário normal";
                    }
                    else if (user.tipoPerfil === "ME"){
                        tipoPerfil.innerText = "Microemprendedor";
                    }
                    else if (user.tipoPerfil === "NM"){
                        tipoPerfil.innerText = "Ambos";
                    }
                    else{
                        tipoPerfil.innerText = "Não identificado!"
                    }

                    if (user.genero==="M"){
                        genero.innerText = "Masculino"
                    } else if (user.genero === "F") {
                        genero.innerText = "Feminino";
                    }
                    else{
                        genero.innerText = "Outros";
                    }
                }
            })
            .catch(error => console.error('Erro:', error));
    });
</script>
<script>
    function toURL(field, currentField, fieldType){
        if (field === "Senha"){
            window.location = "/user/perfil/change/password/change.jsp";
        } else {
            window.location = "/user/perfil/change/change.jsp?field=" + field + "&currentField=" + currentField + "&fieldType=" + fieldType;
        }
    }

    const nomeA = document.getElementById('nomeA');
    const sobrenomeA = document.getElementById('sobrenomeA');
    const dtNascimentoA = document.getElementById('dtNascimentoA');
    const senhaA = document.getElementById('senhaA');
    const usernameA = document.getElementById('usernameA');
    const emailA = document.getElementById('emailA');
    const tipoPerfilA = document.getElementById('tipoPerfilA');
    const generoA = document.getElementById('generoA');

    nomeA.addEventListener("click", function (event){
        event.preventDefault();
        toURL('Nome', document.getElementById('nome').innerText, 'text')
    });
    sobrenomeA.addEventListener("click", function (event){
        event.preventDefault();
        toURL('Sobrenome', document.getElementById('sobrenome').innerText, 'text')
    });
    dtNascimentoA.addEventListener("click", function (event){
        event.preventDefault();
        toURL('Data de nascimento', document.getElementById('dtNascimento').innerText, 'date')
    });
    senhaA.addEventListener("click", function (event){
        event.preventDefault();
        toURL('Senha', '', '')
    });
    usernameA.addEventListener("click", function (event){
        event.preventDefault();
        let temp = document.getElementById('username').innerText
        temp = temp.substring(1);
        toURL('Nome de usuário', temp, 'text')
    });
    emailA.addEventListener("click", function (event){
        event.preventDefault();
        toURL('E-mail', document.getElementById('email').innerText, 'text')
    });
    // tipoPerfilA.addEventListener("click", function (event){
    //     event.preventDefault();
    //     toURL('Nome', document.getElementById('nome').innerText, 'text')
    // });
    // generoA.addEventListener("click", function (event){
    //     event.preventDefault();
    //     toURL('Nome', document.getElementById('nome').innerText, 'text')
    // });

</script>
</body>
</html>
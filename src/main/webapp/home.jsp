<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!-- Carrossel import -->
        <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
        <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lilita+One&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">

        <!-- CSS & Others -->
        <link rel="stylesheet" href="style.css">
        <link rel="icon" type="image/x-icon" href="peticosfavIcon.ico">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Peticos</title>
    </head>
    <body>
        <header class="flex">
            <div id="app" class="flex shadow">
                <div id="logo-container">
                    <a href="home.jsp" style="cursor: pointer">
                        <div class="logo flex">
                            <img src="images/peticoslogo.png" alt="">
                        </div>
                    </a>

                    <span id="logo-milk">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38.75 40">
                            <path d="M 0 0 C 0 11.3334 0 22.6666 0 40 C 4 40 6 40 8 28 C 10 16 20 11 25 9 C 30 7 36 4 36 0 M 31 11 C 32 10 37 9 38 11 C 39 13 39 13 38 15 C 37 17 35 17 33 16 C 31 15 29 13 31 11" fill="#000000"/>
                        </svg>
                    </span>
                </div>
                <div class="flex" id="options">
                    <ul class="flex nolist">
                        <li>
                            <div>
                                <svg fill="#000000" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 480.45 480.45" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> <path d="M236.154,44.328l224.33,267.652l19.972-16.742L249.539,19.728c-3.463-4.125-8.485-6.431-13.67-6.416 c-5.235,0.048-10.173,2.481-13.548,6.667L0,295.432l20.279,16.366L236.154,44.328z"></path> <path d="M232.876,68.73L64.439,277.42L97.73,467.144h268.231l48.978-189.724L239.97,68.667 C237.987,66.298,234.821,66.329,232.876,68.73z M178.176,214.984c15.044-7.853,36.239,3.042,47.337,24.326 c11.093,21.272,7.901,44.885-7.14,52.73c-15.043,7.855-36.231-3.042-47.329-24.324 C159.936,246.439,163.143,222.829,178.176,214.984z M123.09,323.909c-11.093-21.276-7.898-44.89,7.127-52.735 c15.041-7.851,36.244,3.042,47.337,24.329c11.091,21.271,7.899,44.884-7.127,52.729 C155.386,356.078,134.19,345.186,123.09,323.909z M350.23,271.174c15.041,7.846,18.24,31.453,7.135,52.735 c-11.101,21.276-32.286,32.169-47.327,24.323c-15.046-7.846-18.245-31.458-7.134-52.729 C313.999,274.216,335.189,263.323,350.23,271.174z M254.957,239.31c11.091-21.276,32.297-32.171,47.327-24.326 c15.036,7.845,18.235,31.456,7.135,52.732c-11.091,21.277-32.296,32.169-47.337,24.324 C247.057,284.194,243.85,260.582,254.957,239.31z M292.52,351.03c0,2.732-0.279,5.388-0.762,7.978 c14.645,1.6,20.505,19.418,20.505,34.495c0,16.143-13.081,29.244-29.239,29.244c-14.462,0-22.76-1.747-40.098-10.801 c-3.364,0.848-25.494,10.801-40.101,10.801c-16.147,0-29.236-13.102-29.236-29.244c0-15.646,6.746-33.886,22.198-34.668 c-0.467-2.533-0.751-5.134-0.751-7.805c0-23.841,24.902-48.743,48.743-48.743C267.622,302.287,292.52,327.189,292.52,351.03z"></path> </g> </g> </g></svg>
                                <a href="#nossoApp">Nosso app</a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <svg fill="#000000" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M20.629 5h-9.257a1.6 1.6 0 0 0-1.601 1.603V25.4a1.6 1.6 0 0 0 1.601 1.601h9.257c.883 0 1.6-.718 1.6-1.601V6.603c0-.885-.717-1.603-1.6-1.603zm-6.247 1.023h3.302v.768h-3.302v-.768zm1.619 19.395a1.024 1.024 0 0 1-1.023-1.021 1.023 1.023 0 0 1 2.044 0c-.001.494-.46 1.021-1.021 1.021zm5.028-3.501H10.971V7.704h10.058v14.213z"></path></g></svg>
                                <a href="#">Baixe o App</a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <svg width="30px" height="30px" viewBox="0 0 24 24" class="action-chip__icon mr-3"><path d="M11.408 3.382a1.399 1.399 0 011.709.427l3.706 5.415 3.753-2.86a.753.753 0 01.117-.072 1.416 1.416 0 012.04 1.466l-1.172 8.84a.75.75 0 11-1.487-.197L21.22 7.76l-3.53 2.69a1.419 1.419 0 01-2.047-.294l-.004-.006-3.64-5.317-3.642 5.323a1.417 1.417 0 01-2.047.293L2.78 7.76l1.146 8.687a.75.75 0 01-1.487.196L1.266 7.758a1.417 1.417 0 012.041-1.466c.04.02.08.045.116.073l3.754 2.859 3.706-5.415a1.4 1.4 0 01.524-.427z" fill-rule="evenodd" clip-rule="evenodd"></path> <path d="M2.055 16.377A2.75 2.75 0 014 15.572h16a2.75 2.75 0 010 5.5H4a2.75 2.75 0 01-1.945-4.695zM20 17.072H4a1.25 1.25 0 000 2.5h16a1.25 1.25 0 000-2.5z" fill-rule="evenodd" clip-rule="evenodd"></path></svg>
                                <a href="#">Plano Premium</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="flex nolist" id="loginDiv">
                    <div id="user-options-container">
                        <a href="login/login.html" id="user-button">
                            <svg width="30" height="30" viewbox="0 0 24 24" fill="none" id="svg-user" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.47581 2 2 6.47581 2 12C2 17.5242 6.47581 22 12 22C17.5242 22 22 17.5242 22 12C22 6.47581 17.5242 2 12 2ZM12 5.87097C13.9597 5.87097 15.5484 7.45968 15.5484 9.41935C15.5484 11.379 13.9597 12.9677 12 12.9677C10.0403 12.9677 8.45161 11.379 8.45161 9.41935C8.45161 7.45968 10.0403 5.87097 12 5.87097ZM12 19.7419C9.63306 19.7419 7.5121 18.6694 6.09274 16.9919C6.85081 15.5645 8.33468 14.5806 10.0645 14.5806C10.1613 14.5806 10.2581 14.5968 10.3508 14.625C10.875 14.7944 11.4234 14.9032 12 14.9032C12.5766 14.9032 13.129 14.7944 13.6492 14.625C13.7419 14.5968 13.8387 14.5806 13.9355 14.5806C15.6653 14.5806 17.1492 15.5645 17.9073 16.9919C16.4879 18.6694 14.3669 19.7419 12 19.7419Z" fill="#FFFFFF"></path></svg>
                            <p id="user-info">Entre ou Cadastre-se</p>
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

                <!-- MOBILE -->
                <div id="mobileMenu">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hamburger_icon.svg/1200px-Hamburger_icon.svg.png" alt="" id="menuButton">

                    <div id="optionsMenu" class="flex shadow">
                        <ul>
                            <ul class="flex nolist">
                                <li>
                                    <div>
                                        <a href="">Nosso Projeto</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="">Baixe o App</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="">Plano Premium</a>
                                    </div>
                                </li>
                            </ul>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <section id="nossoApp">
            <div class="carousel">
                <div class="carousel-item"><img src="carousel-images/nossoApp.png" alt=""></div>
                <div class="carousel-item"><img src="carousel-images/publicoAlvo.png" alt=""></div>
                <div class="carousel-item"><img src="carousel-images/relacaoODS11.png" alt=""></div>
            </div>
        </section>

        <section>

        </section>

        <footer>

        </footer>

        <script type="text/javascript" src="mobileMenu.js"></script>
        <!-- Carousel -->
        <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="slick/slick.min.js"></script>

        <script type="text/javascript" src="carousel.js"></script>
        <!-- Carousel -->
        <!-- HEADER -->
        <script type="text/javascript" src="link_transition.js"></script>
        <!-- \HEADER -->
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                document.getElementById('svg-user').style.minWidth = "30px";
                document.getElementById("loginDiv").style.width = ((document.getElementById("user-button").innerText.length*8)+(document.getElementById('svg-user').offsetWidth)+30)+"px"
                fetch('/sessionInfo')
                    .then(response => response.json())
                    .then(user => {
                        const userInfo = document.getElementById('user-info');
                        const userButton = document.getElementById('user-button');
                        const userOptions = document.getElementById('opcoes-user');
                        if (user === "Usuário não logado") {
                            userInfo.textContent = "Entre ou Cadastre-se";
                            userButton.href = "/login/login.html";
                            userOptions.style.display = "none";
                        } else {
                            userInfo.textContent = user.username;
                            userButton.onclick=function (){return false};
                            userButton.style.cursor = "default";
                            userButton.style.fontSize = "15px";
                            userOptions.style.display = "block";
                            userOptions.style.width = (document.getElementById("loginDiv").offsetWidth - 20)+"px";
                            userOptions.style.minWidth = "fit-content";
                        }
                    })
                    .catch(error => console.error('Erro:', error));
            });
        </script>
    </body>
</html>
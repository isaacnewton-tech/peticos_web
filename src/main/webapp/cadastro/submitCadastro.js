const formCadastro = document.getElementById("form-cadastro")
const submitBtn = document.getElementById('submitBtn');
formCadastro.addEventListener("submit", function (event){
    event.preventDefault();
    submitBtn.disabled = true;
    //Username, email, senha, confirmar senha
    const senha = document.getElementById("senha").value;
    const confirmarSenha = document.getElementById("senha-confirmar").value;

    const pSenhaIncorreta = document.getElementById("senha-incorreta");

    console.log(senha)
    console.log(confirmarSenha)
    if (senha!==confirmarSenha){
        pSenhaIncorreta.textContent = "* As senhas não coincidem *";
    } else{
        pSenhaIncorreta.textContent = "";
        console.log("senhas iguais")
        document.getElementById("form-cadastro").submit();
    }

})
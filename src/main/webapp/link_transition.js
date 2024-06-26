// Selecione todos os links âncora na página
const links = document.querySelectorAll('a[href^="#"]');

// Altura do cabeçalho fixo (substitua 'alturaDoCabeçalho' pela altura real do seu cabeçalho fixo)
const alturaDoCabecalho = document.querySelector('header').offsetHeight;

// Adicione um ouvinte de evento de clique a cada link âncora
links.forEach(link => {
    link.addEventListener('click', function(event) {
        // Previne o comportamento padrão do link
        event.preventDefault();

        // Obtém o alvo do link (ID do elemento de destino)
        const targetId = this.getAttribute('href').substring(1);

        // Encontra o elemento de destino na página
        const targetElement = document.getElementById(targetId);

        // Se o elemento de destino existir, rola suavemente para ele com um deslocamento compensatório pela altura do cabeçalho
        console.log(alturaDoCabecalho)
        if (targetElement) {
            window.scrollTo({
                top: targetElement.offsetTop - alturaDoCabecalho,
                behavior: 'smooth'
            });
        }
    });
});
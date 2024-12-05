async function searchHistory() {
  const palavraChaveInput = document.getElementById("inputHistory");
  const palavraChave = palavraChaveInput.value.trim();
  const historyList = document.getElementById("historyList");

  historyList.innerHTML = `<h1>Histórias com "${palavraChave}":</h1>`;

  const response = await fetch(`http://localhost:3000/historias/palavrachave/${palavraChave}`);
  if (!response.ok) {
    alert("Erro ao buscar usuários.");
    return;
  }

  const historias = await response.json();

  historias.innerHTML = "";

  historias.forEach((historia) => {
    const historiaItem = document.createElement("div");
    historiaItem.className = "user-item";
    historiaItem.innerHTML = `
      <div class = "history">
        <h3>${historia.historia}</h3>
        <img src="${historia.imagens}" />
      </div>
    `;
    historyList.appendChild(historiaItem);
  });
}

async function searchMessage() {
  const messageList = document.getElementById("messageList");
  messageList.innerHTML = `<h1>Mensagem de Inspiração:</h1>`;

  const response = await fetch(`http://localhost:3000/mensagem`);
  if (!response.ok) {
    alert("Erro ao buscar mensagens.");
    return;
  }

  const mensagens = await response.json();

  mensagens.innerHTML = "";

  mensagens.forEach((mensagem) => {
    const mensagemItem = document.createElement("div");
    mensagemItem.className = "user-item";
    mensagemItem.innerHTML = `
      <div>
        <h3>${mensagem.mensagem}!</h3>
        <h3>Tema: ${mensagem.tema}</h3>
      </div>
    `;
    messageList.appendChild(mensagemItem);
  });
}

async function createMessage() {
  const mensagemInput = document.getElementById("mensagem");
  const temaInput = document.getElementById("tema");

  const mensagem = mensagemInput.value.trim();
  const tema = temaInput.value.trim();

  // Validação dos campos

  const response = await fetch(`http://localhost:3000/mensagem`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ mensagem, tema }),
  });

  if (response.ok) {
    alert("Usuário adicionado com sucesso!");
    // Limpa os campos do formulário
    mensagemInput.value = "";
    temaInput.value = "";

  } else {
    const error = await response.json();
    alert(`Erro ao adicionar usuário: ${error.message}`);
  }
}

let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}
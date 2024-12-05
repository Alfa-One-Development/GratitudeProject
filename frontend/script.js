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
      <div>
        <h3>${historia.historia}</h3>
        <img src="${historia.imagens}" />
      </div>
    `;
    historyList.appendChild(historiaItem);
  });
}

async function searchMessage() {
  const messageList = document.getElementById("messageList");
  messageList.innerHTML = `<h1>Mensagem do dia</h1>`;

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
        <h3>${mensagem.mensagem}</h3>
        <h3>${mensagem.tema}</h3>
      </div>
    `;
    messageList.appendChild(mensagemItem);
  });
}
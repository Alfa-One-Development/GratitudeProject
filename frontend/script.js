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
  const userDetails = document.getElementById("userDetails");

  try {
    const response = await fetch(`http://localhost:3000/mensagem`);
    
      const mensagem = await response.json();
      
      userDetails.innerHTML = `
        <h2>Detalhes do Usuário</h2>
        <p><strong>ID:</strong> ${mensagem.mensagem}</p>
        <p><strong>Nome:</strong> ${mensagem.tema}</p>
      `;
    } catch (error) {
    alert("Erro ao buscar usuário. Verifique sua conexão.");
    userDetails.innerHTML = "";
  }
}
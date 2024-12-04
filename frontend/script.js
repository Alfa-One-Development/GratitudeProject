const historyURL = "http://localhost:3000/historias/palavrachave"

async function fetchUsers() {
  const palavraChaveInput = document.getElementById("userId");
  const palavraChave = userIdInput.value.trim();

  const historyList = document.getElementById("userList");
  showLoading(historyList); // Exibe o spinner

  const response = await fetch(`${historyURL}/${userId}`);
  if (!response.ok) {
    alert("Erro ao buscar usuários.");
    return;
  }

  const historias = await response.json();

  historias.innerHTML = "<h2>Lista de Usuários</h2>";

  historias.forEach((historia) => {
    const historiaItem = document.createElement("div");
    historiaItem.className = "user-item";
    historiaItem.innerHTML = `
      <div>
        <p><strong>Nome:</strong> ${historia.historia}</p>
      </div>
    `;
    historyList.appendChild(historiaItem);
  });
}
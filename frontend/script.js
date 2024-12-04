const historyURL = "http://localhost:3000/historias/palavrachave"

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
  const pokemonName = document.getElementById("pokemonName").value.trim();

  if (!pokemonName) {
    document.getElementById("errorMessage").textContent =
      " PLEASE ENTER A POKEMON NAME OR ID";
    document.getElementById("errorMessage").style.display = "block";
  }

  document.getElementById("errorMessage").style.display = "none";
  document.getElementById("loadingMessage").style.display = "block";

  try {
    const response = await fetch(
      `http://localhost:${PORT}/pokemon/${pokemonName.toLowerCase()}`
    );

    if (!response.ok) {
      throw new Error("POKEMON NOT FOUND");
    }

    const data = await response.json();
    console.log(data);

    currentID = parseInt(data.id);

    //! SETTING DATA IN HTML
    document.getElementById("pokemonInfo").style.display = "block";

    //! SETTING POKEMON NAME & ID
    document.getElementById("pokemonTitle").textContent =
      data.name.toUpperCase();
    document.getElementById("pokemonId").textContent = data.id;

    //! SETTING POKEMON IMAGE
    document.getElementById("pokemonImage").src = data.image;
    document.getElementById("pokemonImage").alt = `Image of ${data.name}`;
    document.getElementById("pokemonImageBack").src = data.imageBack;
    document.getElementById("pokemonImageBack").alt = `Image of ${data.name}`;

    //! SETTING POKEMON IMAGE SHINY
    document.getElementById("pokemonImageShiny").src = data.imageShiny;
    document.getElementById("pokemonImageShiny").alt = `Image of ${data.name}`;
    document.getElementById("pokemonImageShinyBack").src = data.imageShinyBack;
    document.getElementById(
      "pokemonImageShinyBack"
    ).alt = `Image of ${data.name}`;

    //! SETTING POKEMON STATS
    document.getElementById("pokemonOrder").textContent = data.order;
    document.getElementById("pokemonTypes").textContent = data.types;
    document.getElementById("pokemonBaseExperience").textContent =
      data.base_experience;
    document.getElementById("pokemonHeight").textContent = data.height;
    document.getElementById("pokemonWeight").textContent = data.weight;
    document.getElementById("pokemonAbilities").textContent = data.abilities;
    document.getElementById("pokemonStats").textContent = data.stats;
    document.getElementById("pokemonHeldItems").textContent = data.held_items;
    document.getElementById("pokemonMoves").textContent = data.moves;
  } catch (error) {
    document.getElementById("errorMessage").textContent = error.message;
    document.getElementById("errorMessage").style.display = "block";
    document.getElementById("pokemonInfo").style.display = "none";
  } finally {
    document.getElementById("loadingMessage").style.display = "none";
  }

  return currentID;
}
const createConnection = require("../db"); // Importa a função para criar a conexão com o banco de dados
const { Request, TYPES } = require("tedious"); // Importa as classes necessárias do tedious

exports.getHistory = (palavraChave, callback) => {
  const connection = createConnection();
    connection.on('connect', err => {
        if (err) return callback(err, null);

        const query = `select * from Historias where historia like @palavraChave`; // Consulta SQL para buscar aluno por RM
        const request = new Request(query, (err) => {
            if (err) return callback(err, null);
        });

        request.addParameter('palavraChave', TYPES.VarChar, `%${palavraChave}%`); // Define o parâmetro RM como um inteiro

        const result = [];
        request.on("row", (columns) => {
          result.push({
            id: columns[0].value,
            historia: columns[1].value,
            tema: columns[2].value
          });
        });

        request.on('requestCompleted', () => callback(null, result)); // Retorna o aluno encontrado
        connection.execSql(request);
    });
    connection.connect();
}

exports.getMessage = (callback) => {
  const connection = createConnection(); // Cria a conexão com o banco de dados
  connection.on("connect", (err) => {
    if (err) {
      return callback(err, null); // Trata erros de conexão
    }
    const query = `SELECT TOP 1 * FROM MensagensCurtas ORDER BY NEWID()`; // SQL para buscar todas os usuários
    const request = new Request(query, (err, rowCount) => {
      if (err) {
        return callback(err, null); // Trata erros de execução da consulta
      }

      if (rowCount === 0) {
        return callback(null, []); // Retorna um array vazio se não houver registros
      }
    });

    // Evento 'row' para capturar todas as linhas de resultados
    const result = [];
    request.on("row", (columns) => {
      result.push({
        id: columns[0].value,
        mensagem: columns[1].value,
        tema: columns[2].value
      });
    });

    // Ao completar a consulta, retorna o array com todos os usuários
    request.on("requestCompleted", () => {
      callback(null, result); // Retorna o array de resultados
    });

    connection.execSql(request); // Executa a consulta
  });

  connection.connect(); // Inicia a conexão
};

exports.createMessage = (data, callback) => {
  const connection = createConnection(); // Cria a conexão com o banco de dados

  connection.on("connect", (err) => {
    if (err) {
      return callback(err, null); // Trata erros de conexão
    }

    //! Consulta SQL para inserir um novo usuário
    const query = `INSERT INTO MensagensCurtas VALUES (@mensagem, @tema)`; // SQL para inserir um novo usuário

    const request = new Request(query, (err) => {
      if (err) {
        callback(err); // Chama a função callback com erro se houver falha
      } else {
        callback(null, { message: "Usuario inserido com sucesso!" });
      }
    });
    // Adiciona os parâmetros necessários para a inserção
    request.addParameter('mensagem', TYPES.NVarChar, data.mensagem);
    request.addParameter('tema', TYPES.NVarChar, data.tema);

    connection.execSql(request); // Executa a consulta
  });

  connection.connect(); // Inicia a conexão
};
const userModel = require("../models/userModel");

exports.getHistory = (req, res) => { 
  const { palavrachave } = req.params;  // Extrai o ID dos parâmetros da URL 
  userModel.getHistory(palavrachave, (err, historias) => { 
      if (err) { 
          res.status(500).send('PODER I-LI-MI-TA-DOOOO, PORRRRAAAAAAAAAAAAA');  // Retorna um erro 500 se algo deu errado 
      } else { 
          res.json(historias);  // Retorna os usuários em formato JSON 
      } 
  }); 
}; 

exports.getMessage = (req, res) => { 
  userModel.getMessage((err, mensagem) => { 
      if (err) { 
          res.status(500).send('PODER I-LI-MI-TA-DOOOO, PORRRRAAAAAAAAAAAAA');  // Retorna um erro 500 se algo deu errado 
      } else { 
          res.json(mensagem);  // Retorna os usuários em formato JSON 
      } 
  }); 
}; 

exports.createMessage = (req, res) => { 
  const data = req.body;  // Extrai o nome do corpo da requisição 
  userModel.createMessage(data, (err) => { 
      if (err) { 
          res.status(500).send('PODER I-LI-MI-TA-DOOOO, PORRRRAAAAAAAAAAAAA');  // Retorna um erro 500 se algo deu errado 
      } else { 
          res.status(201).send('NÃO, LUKE, EU SOU SEU PAI!!!');  // Retorna status 201 (criado) se bem-sucedido 
      } 
  }); 
}; 
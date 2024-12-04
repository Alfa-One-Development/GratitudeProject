const express = require("express");
const router = express.Router();
const userController = require("../controllers/userController");

router.get('/historias/palavrachave/:palavrachave', userController.getHistory); 

router.get('/mensagem', userController.getMessage); 

router.post('/mensagem', userController.createMessage); 

module.exports = router;

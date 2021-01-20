const express = require('express')
const router = new express.Router()

const Autenticacao = require('./middlewares/Auth');

const rotaUsuario = require('./routes/User')
const rotaCliente = require('./routes/Cliente')
const rotaVendedor = require('./routes/Vendedor')
const rotaProduto = require('./routes/Produtos')
const rotaCategoria = require('./routes/Categorias')

router.use('/', rotaUsuario)
router.use('/cliente',Autenticacao.clientAuth,rotaCliente)
router.use('/vendedor',Autenticacao.vendAuth,rotaVendedor)
router.use('/categorias',rotaCategoria)
router.use("/produto",rotaProduto)
  

module.exports = router

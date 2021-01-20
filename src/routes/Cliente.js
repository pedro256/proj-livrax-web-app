const clienteController = require('../controllers/clienteController')
const produtoController = require('../controllers/produtoController')
const categoriaController = require('../controllers/categoriaController')
const vendedorController = require('../controllers/vendedorController')
const bairroCidadeEstadoController = require('../controllers/bairroCidadeEstadoController')
const express = require('express');
const router = new express.Router();

router.get('/', async(req, res) => {
  const cliente = await clienteController.obterDadosId(req.session.user.id)
  const produto = await produtoController.listarLimitado()
  const categorias = await categoriaController.listarTodosOrdenadoLike();
  const subcategorias = await categoriaController.listarTodasSubCategorias();
  const estados = await bairroCidadeEstadoController.listarEstados();
  const vendedores_destaques = await vendedorController.obterVendedoresPrincipais(0);

  console.log(req.session.user.id)
  res.render('user/cliente/home', { 
    produtos: produto,
    categorias:categorias, 
    subcategorias:subcategorias,
    estados:estados,
    dados_usuario: cliente,
    vendedores_destaques:vendedores_destaques
  });
})

router.get('/update/:id', async(req, res) => {
  try{
    const cliente = await clienteController.obterDadosId(req.session.user.id)
    res.render('user/cliente/editar_perfil', { dados_usuario: cliente })
  }catch(erro){
    console.error(erro)
    res.redirect('/')
  }
})

router.post('/update', async(req, res) => {
  try{
    await clienteController.atualizar(req.body)
    res.redirect('/cliente/perfil')
  }catch(erro){
    console.log("Erro no Update: "+ erro);
    res.redirect('/');
  }
})


router.get('/perfil', async (req, res) => {
  try{
    const cliente = await clienteController.obterDadosAssociacoesId(req.session.user.id)
    res.render("user/cliente/perfil", { dados_usuario: cliente[0],bairro: cliente[1]})
  }catch(erro){
    console.error(erro)
    res.redirect('/')
  }
})

module.exports = router;
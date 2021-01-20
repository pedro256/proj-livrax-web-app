const vendedorController = require('../controllers/vendedorController')
const produtoController = require("../controllers/produtoController")
const express = require('express');
const router = new express.Router();

router.get('/', async(req,res)=>{
  const vendedor = await vendedorController.obterDadosId(req.session.user.id)
  const produtos = await produtoController.listarTodos()
  res.render('user/vendedor/home',{dados_vendedor: vendedor, produtos: produtos});
})

router.get('/update/:id', async(req, res) => {
  try{
    const vendedor = await vendedorController.obterDadosId(req.session.user.id)
    res.render('user/vendedor/editar_perfil', { dados_vendedor: vendedor })
  }catch(erro){
    console.error(erro)
    res.redirect('/')
  }
})


router.post('/update', async(req, res) => {
  try{
    await vendedorController.atualizar(req.body)
    res.redirect('/vendedor/perfil')
  }catch(erro){
    console.log("Erro no Update: "+ erro);
    res.redirect('/');
  }
})

router.get('/perfil', async (req, res) => {
  try{
    const vendedor = await vendedorController.obterDadosAssociacoesId(req.session.user.id)
    res.render("user/vendedor/perfil", { dados_vendedor: vendedor[0],bairro: vendedor[1]})
  }catch(erro){
    console.error(erro)
    res.redirect('/')
  }
})


module.exports = router;
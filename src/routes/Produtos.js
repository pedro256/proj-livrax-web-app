const multer = require('multer');
const uploadConfig = require('../config/multer');
const upload = multer(uploadConfig);
const vendedorController = require('../controllers/vendedorController')
const categoriaController = require('../controllers/categoriaController')
const produtoController = require('../controllers/produtoController')
const express = require('express');
const router = new express.Router();

router.get('/novo', async(req,res)=>{
  try{
    const vendedor = await vendedorController.obterDadosId(req.session.user.id)
    const categorias = await categoriaController.listarTodasSubCategorias()
    res.render('user/vendedor/publicacao/create',{dados_vendedor: vendedor,categorias: categorias});
  }catch(erro){
    console.log("Erro tentar ir para publicacoes: "+erro)
    res.redirect('/')
  }
   
}) 

router.post('/create',upload.single('filename'),async(req,res)=>{
  try {
    var { filename: img_filename } = req.file;
    console.log(req.file.path)
    await produtoController.criar(req.body,req.file.path,img_filename)
    console.log('sucesso na publicação!')
    res.redirect('/');
  } catch (error) {
    console.log(error)
    res.redirect('/produto/novo')
  }
})
router.get('/:page',async(req,res)=>{
  try {
    var page = 1
    if(req.params.page>0) page = req.params.page
    const data = await produtoController.listarPage(page)

    res.render('publicacoes/index',{produtos:data.produtos,page:page,proxima:data.proxima,anterior:data.anterior})
} catch (error) {
    console.log('Erro Pagina:'+error)
}
})

router.get('/produto-infor/:id',async (req,res) =>{
  try {
      const produto = await produtoController.buscarId(req.params.id)
      res.render('publicacoes/page',{item:produto})
  } catch (error) {
      console.log('Erro Pagina de Subcategoria especifica:'+error)
  }
})

module.exports = router;

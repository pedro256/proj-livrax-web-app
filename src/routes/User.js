const produtoController = require('../controllers/produtoController')
const vendedorController = require('../controllers/vendedorController')
const clienteController = require('../controllers/clienteController')
const categoriaController = require('../controllers/categoriaController')
const bairroCidadeEstadoController = require('../controllers/bairroCidadeEstadoController')
const multer = require('multer');
const uploadConfig = require('../config/multer');
const upload = multer(uploadConfig);
const express = require('express')
const router = new express.Router()

router.get('/', (req, res) => {
    if(req.session.user != undefined && req.session.user != null){
        switch(Number(req.session.user.tipo_conta)){
            case 0:
                res.redirect('/cliente/')
                break
            case 1:
                res.redirect('/vendedor/')
                break
            default:
                break
        }
    }else{
        res.redirect('/logar')
    }
})
router.get('/home', async (req, res) => {
    const resposta = await produtoController.listarTodos();
    const categorias = await categoriaController.listarTodosOrdenadoLike();
    const subcategorias = await categoriaController.listarTodasSubCategorias();
    const estados = await bairroCidadeEstadoController.listarEstados();
    const vendedoresDestaque = await vendedorController.obterVendedoresPrincipais(0);
    if(resposta!=false){
        console.log('pagina principal')
        res.render("index", { produtos: resposta, categorias:categorias, subcategorias:subcategorias,estados:estados,vendedore_destaque: vendedoresDestaque})
    }
    
})



router.get('/tipo-conta', (req, res) => {
    res.render('user/tipoConta')
})
router.get('/logar', (req, res) => {
    res.render('user/login')
})
router.get('/logout', (req, res) => {
    req.session.user = null;
    res.redirect('/');
})


router.post('/nova-conta', async(req, res) => {

    const bairros = await bairroCidadeEstadoController.listarBairrosCidade()

    switch (req.body.tipo_conta) {
        case '0':
            res.render('user/create/Cliente',{bairros:bairros})
            break
        case '1':
            res.render('user/create/Vendedor',{bairros:bairros})
            break
        default:
            res.redirect('/home')
            break
    }
})

router.post('/criar-vendedor',upload.single('filename'),async (req, res) => {
    try {
        var { filename: img_filename } = req.file;
        console.log(img_filename)
        await vendedorController.criar(req.body,req.file.path,img_filename)
        console.log('sucesso na publicação!')
        res.redirect('/');
      } catch (error) {
        console.log(error)
        res.redirect('/tipo-conta')
      }
});


router.post('/criar-cliente',upload.single('filename'), async (req, res) => {
    try {
        var { filename: img_filename } = req.file;
        console.log(img_filename)
        await clienteController.criar(req.body,req.file.path,String(img_filename))
        console.log('sucesso na publicação!')
        res.redirect('/');
      } catch (error) {
        console.log(error)
        res.redirect('/tipo-conta')
      }

});

router.post('/autenticar', async(req, res) => {
    var resposta = null;
    switch(Number(req.body.tipo_conta)){
        case 0:
            resposta = await clienteController.procurar( req.body.email, req.body.senha)
            if(resposta!=null){
                req.session.user = { id: resposta,email: req.body.email,password: req.body.senha,tipo_conta: 0}
            }else{
                res.redirect('/logar')
            }
            res.redirect("/")
            break;
        case 1:
            resposta = await vendedorController.procurar(req.body.email, req.body.senha)
            if(resposta != 0){
                req.session.user = { id: resposta,email: req.body.email,password: req.body.senha,tipo_conta: 1}
            }else{
                res.redirect('/logar')
            }
            res.redirect("/")
            break;
        default:
            res.redirect("/logar");
            break;
    }
})


module.exports = router;
const categoriaController = require('../controllers/categoriaController')
const express = require('express');
const router = new express.Router();


router.get('/:page', async (req, res) => {
    try {
        var page = 1
        if(req.params.page>0) page = req.params.page
        const data = await categoriaController.listarSubCategoriasPage(page)
        const categorias = await categoriaController.listarTodasCategorias()
        res.render('categorias/index',{subcategorias:data.subcategorias,page:page,proxima:data.proxima,anterior:data.anterior,categorias:categorias})
        
    } catch (error) {
        console.log('Erro Pagina:'+error)
    }
})
router.get('/categoria/:id',async (req,res) =>{
    try {
        const categoria = categoriaController.encontraCategoriaId(req.params.id)
        res.render('categorias/page',{item:categoria})
    } catch (error) {

        console.log('Erro Pagina de Categoria especifica:'+error)
    }
})

router.get('/subcategoria/:id',async (req,res) =>{
    try {
        const subcategoria = await categoriaController.encontraSubcategoriaId(req.params.id)
        res.render('categorias/page',{item:subcategoria})
    } catch (error) {
        console.log('Erro Pagina de Subcategoria especifica:'+error)
    }
})



module.exports = router;
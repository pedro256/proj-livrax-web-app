const ProdutoModelo = require('../models/produto')
const SequelizeOp = require('../config/SequelizeOperations')

const Firebase = require('../services/firebase/firebase');

class Produto {
  async listarTodos() {
    try {
      const produto = await ProdutoModelo.findAll({
        include: [{
          association: 'publicacao_vendedor_index'
        }, {
          association: 'produto_categoria'
        }
        ]
      })
      return produto
    } catch (error) {
      console.log(error)
      return false
    }
  }

  async listarLimitado() {
    try {
      const produtos = await ProdutoModelo.findAll({
        limit: 9,
        offset: 0,
        attributes: ['id', 'img_filename', 'nome_produto', 'descricao', 'preco_produto', 'quantidade']
      });
      await produtos.forEach(produto => {
        produto.descricao = String(produto.descricao).slice(0, 100) + ' ...'
      });
      return produtos
    } catch (error) {
      console.log("Erro listagem: " + error)
      return false;
    }
  }


  async criar(body, path, img_filename) {
    try {
      const { nome_produto, descricao, categoriaId, preco_produto, destalhes_importantes, vendedorId, quantidade } = body
      const numero_estrelas = 0
      img_filename = String(img_filename)
      const [name, ext] = img_filename.split('.')
      img_filename = await Firebase.upload_img_produto(String(path), name)
      await ProdutoModelo.create({ nome_produto, quantidade, descricao, categoriaId, vendedorId, numero_estrelas, preco_produto, destalhes_importantes, img_filename })
      return true;
    } catch (error) {
      console.log("Erro na criação do produto: " + error)
      return false;
    }
  }

  async listarPage(page_num) {
    try {
      const limit = 9
      let offset = (limit * page_num) - limit
      let count = await ProdutoModelo.count()
      let prox = true;
      let anterior = true;
      if (limit * page_num >= count) prox = false;
      if (page_num == 1) anterior = false;
      const produtos = await ProdutoModelo.findAll({
        limit: limit,
        offset: offset,
        attributes: ['id', 'img_filename', 'nome_produto', 'descricao', 'preco_produto', 'quantidade']
      });
      await produtos.forEach(produto => {
        produto.descricao = String(produto.descricao).slice(0, 100) + ' ...'
      });

      return await {
        produtos: produtos,
        proxima: prox,
        anterior: anterior
      }

    } catch (error) {
      console.log(error)
      return false
    }
  }


  async buscarPorPalavra(palavra) {
    return await ProdutoModelo.findAll({
      where:{
        [SequelizeOp.or]:[
          {
            descricao:{
              [SequelizeOp.like]: ("%"+palavra+"%")
            }
          },
          {
            nome_produto:{
              [SequelizeOp.like]: ("%"+palavra+"%")
            }
          }
        ]
        
      },
      attributes: ['id', 'img_filename', 'nome_produto', 'descricao', 'preco_produto', 'quantidade']
    })
  }

  async buscarId(id){
    return await ProdutoModelo.findOne({
      where:{id:id},
      attributes: ['id', 'img_filename', 'nome_produto', 'descricao', 'preco_produto', 'quantidade','n_positivos','n_negativos']})
  }


}

module.exports = new Produto()
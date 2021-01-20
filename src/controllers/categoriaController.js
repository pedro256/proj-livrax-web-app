const CategoriaModelo = require('../models/categoria')
const SubcategoriaModelo = require('../models/subcategoria')

class Categoria {

  async listarTodosOrdenadoLike() {
    try {
      return await CategoriaModelo.findAll({ order: [['id']], })
    } catch (error) {
      console.log(error)
      return false
    }
  }
  async listarTodosOrdenadoAlfabeto() {
    var lista = await CategoriaModelo.findAll()
    return lista.sort((a, b) => { return (a.nome_categoria > b.nome_categoria) ? 1 : ((b.nome_categoria > a.nome_categoria) ? -1 : 0); })
  }

  async listarSubCategoriasPage(page_num) {
    try {
      const limit = 9
      let offset = (limit * page_num) - limit
      let count = await SubcategoriaModelo.count()
      let prox = true;
      let anterior = true;
      if (limit * page_num >= count) prox = false;
      if (page_num == 1) anterior = false;
      const subcategorias = await SubcategoriaModelo.findAll({
        limit: limit,
        offset: offset,
        attributes: ['id', 'nome', 'descricao', 'foto', 'likes']
      });
      await subcategorias.forEach(subcategoria => {
        subcategoria.descricao = String(subcategoria.descricao).slice(0, 100) + ' ...'
      });

      return await {
        subcategorias: subcategorias,
        proxima: prox,
        anterior: anterior
      }

    } catch (error) {
      console.log(error)
      return false
    }
  }
  async listarTodasCategorias() {
    try {
      return await CategoriaModelo.findAll();
    } catch (error) {
      console.log(error)
      return false
    }
  }
  async listarTodasSubCategorias() {
    try {
      return await SubcategoriaModelo.findAll();
    } catch (error) {
      console.log(error)
      return false
    }
  }
  async buscarPorPalavraSubcategorias(palavra) {
    return await SubcategoriaModelo.findAll({
      where: {
        [SequelizeOp.or]: [
          {
            descricao: {
              [SequelizeOp.like]: ("%" + palavra + "%")
            }
          },
          {
            nome: {
              [SequelizeOp.like]: ("%" + palavra + "%")
            }
          }
        ]

      },
      attributes: ['id', 'nome', 'descricao', 'foto', 'likes']
    })
  }
  async darLikeSubCategoria(id) {
    try {
      const subcategoria = await SubcategoriaModelo.findOne({ where: { id: id } })
      if (subcategoria) {
        SubcategoriaModelo.update(
          {
            likes: subcategoria.likes + 1
          }, {
          where: {
            id: subcategoria.id
          }
        }
        )
      }
      return subcategoria
    } catch (error) {
      console.error('Erro metodo darlikesubcategoria: '+error)
    }

  }
  
  async darLikeCategoria(id) {
    try {
      const categoria = await CategoriaModelo.findOne({ where: { id: id } })
      if (categoria) {
        CategoriaModelo.update(
          {
            likes: categoria.likes + 1
          }, {
          where: {
            id: categoria.id
          }
        }
        )
      }
      return categoria
    } catch (error) {
      console.error('Erro metodo darlikecategoria: '+error)
    }

  }

  async encontraCategoriaId(id) {
    try {
      const categoria = await CategoriaModelo.findOne({ where: { id: id } })
      if (categoria) {
        return categoria
      }else{
        return null;
      }
      
    } catch (error) {
      console.error('Erro metodo encontraCategoriaId: '+error)
    }
  }

  async encontraSubcategoriaId(id) {
    try {
      const subcategoria = await SubcategoriaModelo.findOne({ where: { id: id } })
      if (subcategoria){
        return subcategoria
      }else{
        return null;
      }
    } catch (error) {
      console.error('Erro metodo encontraSubcategoriaId: '+error)
    }
  }
}

module.exports = new Categoria();
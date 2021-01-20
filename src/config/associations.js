const Produto = require('../models/produto')
const Cliente = require('../models/usuario')
const Bairro = require('../models/bairro')
const Cidade = require('../models/cidade')
const Estado = require('../models/estado')
const SubCategoria = require('../models/subcategoria')
const Vendedor = require('../models/vendedor')
class Associacao{
    index(){

        // produto * --- 1 vendedor
        Produto.belongsTo(Vendedor, {
            foreignKey: 'vendedorId',
            as: 'publicacao_vendedor_index'
        })
        
        Vendedor.hasMany(Produto, {
            foreignKey: 'vendedorId',
            as: 'publicacao_vendedor_index'
        })
        // --------------

        //produto * --- 1 subcategorias
        Produto.belongsTo(SubCategoria, {
            foreignKey:'categoriaId',
            as: 'produto_categoria'
        })
        SubCategoria.hasMany(Produto,{
            foreignKey:'categoriaId',
            as: 'produto_categoria'
        })

        //cliente* -- 1 bairro
        Cliente.belongsTo(Bairro,{
            foreignKey:'bairro_cidade_estado',
            as:'cliente_bairro'
        })
        Bairro.hasMany(Cliente,{
            foreignKey:'bairro_cidade_estado',
            as:'cliente_bairro'
        })
        //vendedor* -- 1 bairro
        Vendedor.belongsTo(Bairro,{
            foreignKey:'bairro_cidade_estado',
            as:'vendedor_bairro'
        })
        Bairro.hasMany(Vendedor,{
            foreignKey:'bairro_cidade_estado',
            as:'vendedor_bairro'
        })
        //bairro * -- 1 cidade
        Bairro.belongsTo(Cidade,{
            foreignKey:'cidade',
            as: 'bairro_cidade'
        })
        Cidade.hasMany(Bairro,{
            foreignKey:'cidade',
            as: 'bairro_cidade'
        })
        //cidade* -- 1 estado
        Cidade.belongsTo(Estado,{
            foreignKey:'estado',
            as: 'cidade_estado'
        })
        Estado.hasMany(Cidade,{
            foreignKey:'estado',
            as: 'cidade_estado'
        })
    }
}

module.exports = new Associacao();
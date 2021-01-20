const Bairro = require('../models/bairro')
const Cidade = require('../models/cidade')
const Estado = require('../models/estado')
const SeqOp = require('../config/SequelizeOperations')

class Endereco {
    async procurarBairro(pesquisa) {
        try {
            var bairro = await Bairro.findOne({
                where: {
                    nome: {
                        [SeqOp.like]: "%" + pesquisa + "%"
                    }
                }
            })
            if (bairro != null) {
                const cidade = await this.procurarCidadeId(bairro.cidade)
                return await {
                    bairro_nome: bairro.nome,
                    bairro_id: bairro.id,
                    bairro_zona: bairro.zona,
                    cidade: cidade
                }
            } else {
                return null;
            }

        } catch (error) {
            console.log(error)
        }
    }
    async procurarBairroId(id) {
        try {
            var bairro = await Bairro.findOne({
                where: {id: id}
            })
            if (bairro != null) {
                const cidade = await this.procurarCidadeId(bairro.cidade)
                return await {
                    bairro_nome: bairro.nome,
                    bairro_id: bairro.id,
                    bairro_zona: bairro.zona,
                    cidade: cidade
                }
            } else {
                return null;
            }

        } catch (error) {
            console.log(error)
        }
    }

    async procurarCidadeId(id) {
        try {
            var cidade = await Cidade.findOne({
                where: {
                    id: id
                }
            })
            if (cidade != null) {
                const estado = await this.procurarEstadoId(cidade.estado)
                return await {
                    id: cidade.id,
                    nome: cidade.nome,
                    estado: estado

                }
            } else {
                return null;
            }
        } catch (error) {
            console.log(error)
        }
    }
    async procurarEstadoId(id) {
        try {
            var estado = await Estado.findOne({
                where: {
                    id: id
                }
            })
            if (estado != null) {
                return await{
                    id: estado.id,
                    nome: estado.nome,
                    codigo: estado.codigo
                }
            } else {
                return null;
            }
        } catch (error) {
            console.log(error)
        }
    }

    async listarBairros() {
        return await Bairro.findAll({
            attributes: ['nome', 'zona', 'id']
        })
    }
    async listarCidade() {
        return await Cidade.findAll({
            attributes: ['nome', 'id']
        })
    }
    async listarEstados() {
        return await Estado.findAll({
            attributes: ['id', 'nome', 'codigo']
        })
    }
    async listarBairrosCidade() {
        try {
            return await Bairro.findAll({
                include: {
                    association: 'bairro_cidade'
                }
            })

        } catch (error) {
            console.log("Erro na listagem de bairros e associações: " + error)
        }
    }
}

module.exports = new Endereco();
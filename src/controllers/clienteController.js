const ClienteModelo = require('../models/usuario')
const BairroController = require('./bairroCidadeEstadoController')
const Firebase = require('../services/firebase/firebase')


class Cliente {
  async criar(body,path,foto_perfil) {
    try {
      const { nome, data_nascimento,cpf,e_mail,senha,sua_descricao,cep,complemento_endereco,logradouro,bairro_cidade_estado } = body
      const n_positivos = 0
      const n_negativos = 0
      const nome_img_perfil = foto_perfil
      const [name, ext] = foto_perfil.split('.')
      foto_perfil = await Firebase.upload_img_perfil_usuario(String(path), name)
      await ClienteModelo.create({ nome, data_nascimento,cpf,e_mail,senha,sua_descricao,cep,complemento_endereco,logradouro,bairro_cidade_estado,n_positivos,n_negativos,foto_perfil,nome_img_perfil })
      return true;
    } catch (error) {
      console.log("Erro na criação do Cliente: "+error)
      return false;
    }
  }
  async procurar(email, senha) {
    const cliente = await ClienteModelo.findOne({ where: { e_mail: email, senha: senha } })
    if(cliente == null || cliente.id == undefined){
      return null
    }else{
      return cliente.id
    }
  }
  async obterDadosId(id) {
    return await ClienteModelo.findOne({ where: { id: id } })
  }
  async obterDadosAssociacoesId(id) {
    try {
      var cliente = await ClienteModelo.findOne({ 
        where: { id: id }
      })
     
      const bairro = await BairroController.procurarBairroId(cliente.bairro_cidade_estado)
      cliente = cliente.dataValues
      return [cliente,bairro]
    } catch (error) {
      console.log("Erro obterDadosAssociacoesId - ClienteController: "+error)
    }
    
  }
  async atualizar(dados) {
    return await ClienteModelo.update(dados, { where: { id: dados.id } })
  }
}

module.exports = new Cliente()
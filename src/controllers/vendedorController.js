const vendedorModelo = require('../models/vendedor');
const BairroController = require('./bairroCidadeEstadoController');
const Firebase = require('../services/firebase/firebase');

class Vendedor{
  async criar(body,path,foto_perfil) {
    try {
      const { nome_profissional_responsavel,nome_empresa, data_nascimento_vendedor,cpf,site_profissional_empresa,e_mail,senha,dados_profissionais,cep,complemento_endereco,logradouro,bairro_cidade_estado } = body
      const n_positivos = 0
      const n_negativos = 0
      const nome_img_perfil = foto_perfil
      foto_perfil = String(foto_perfil)
      const [name, ext] = foto_perfil.split('.')
      foto_perfil = await Firebase.upload_img_perfil_vendedor(String(path), name)
      await vendedorModelo.create({ 
        nome_profissional_responsavel,
        nome_empresa,
        data_nascimento_vendedor,
        cpf,
        site_profissional_empresa,
        e_mail,
        senha,
        dados_profissionais,
        cep,
        complemento_endereco,
        logradouro,
        bairro_cidade_estado,
        n_negativos,
        n_positivos,
        foto_perfil,
        nome_img_perfil
      })
      return true;
    } catch (error) {
      console.log("Erro na criação do Vendedor: "+error)
      return false;
    }
  }
  async procurar(email,senha){
    const vendedor = await vendedorModelo.findOne({ where: { e_mail: email, senha: senha } })
    if(vendedor.id != null){
      return vendedor.id
    }else{
      return 0
    }
    
  }
  
  async obterDadosId(id){
    return await vendedorModelo.findOne({where: {id:id}})
  }
  async atualizar(dados,) {
    return await vendedorModelo.update(dados, { where: { id: dados.id } })
  }
  
  async obterDadosAssociacoesId(id) {
    try {
      var vendedor = await vendedorModelo.findOne({ 
        where: { id: id }
      })
     
      const bairro = await BairroController.procurarBairroId(vendedor.bairro_cidade_estado)
      vendedor = vendedor.dataValues
      return [vendedor,bairro]
    } catch (error) {
      console.log("Erro obterDadosAssociacoesId - vendedorController: "+error)
    }
  }
  async obterVendedoresPrincipais(quantidade){
    try {
      return [
        {
          foto_perfil: 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg',
          nome:'Pedro Henrique',
          descricao_dividida:'This is basic card with image on top, title, description and button.',
          descricao_completa:'This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.'
        },
        {
          foto_perfil: 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg',
          nome:'Luis Ricardo',
          descricao_dividida:'This is basic card with image on top, title, description and button.',
          descricao_completa:'This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.'
        },
        {
          foto_perfil: 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg',
          nome:'Mario Andrade',
          descricao_dividida:'This is basic card with image on top, title, description and button.',
          descricao_completa:'This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.'
        },
        {
          foto_perfil: 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg',
          nome:'Paulo Sousa',
          descricao_dividida:'This is basic card with image on top, title, description and button.',
          descricao_completa:'This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.'
        },
        {
          foto_perfil: 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg',
          nome:'Gabriel Nosley',
          descricao_dividida:'This is basic card with image on top, title, description and button.',
          descricao_completa:'This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.'
        },
        {
          foto_perfil: 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg',
          nome:'Natalia Luiza',
          descricao_dividida:'This is basic card with image on top, title, description and button.',
          descricao_completa:'This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.'
        }
      ]
    } catch (error) {
      console.log("Erro obterVendedoresPrincipais - vendedorController: "+error)
    }
  }
} 

module.exports = new Vendedor()
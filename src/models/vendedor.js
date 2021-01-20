const Sequelize = require("sequelize");
const sequelize = new Sequelize(require("../config/database"));


const vendedor = sequelize.define('vendedores',{
    nome_profissional_responsavel: {
        type: Sequelize.STRING,
        allowNull: false
    },nome_empresa: {
        type: Sequelize.STRING,
        allowNull: false
    },
    data_nascimento_vendedor: {
        type: Sequelize.DATE,
        allowNull: false
    },
    cpf: {
        type: Sequelize.STRING,
        allowNull: false
    },site_profissional_empresa: {
        type: Sequelize.STRING,
        defaultValue: "NÃO INSERIDO"
    },
    e_mail: {
        type: Sequelize.STRING,
        allowNull: false
    },
    senha: {
        type: Sequelize.STRING,
        allowNull: false
    },
    dados_profissionais:{
        type: Sequelize.TEXT,
        defaultValue : "NÃO INSERIDO"
    },
    cep: {
        type: Sequelize.STRING,
        defaultValue: 'NÃO INSERIDO'
    },
    complemento_endereco: {
        type : Sequelize.TEXT,
        defaultValue: 'NÃO INSERIDO'
    },
    logradouro: {
        type: Sequelize.STRING,
        defaultValue: 'NÃO INSERIDO'
    },
    bairro_cidade_estado:{
        type: Sequelize.INTEGER,
        references:{
            model: 'bairros',
            key: 'id',
            onDelete: 'cascate',
            onUpdate: 'cascates'
        }
    }
    ,
    n_positivos:{
        type: Sequelize.INTEGER,
        defaultValue: 0
    },
    n_negativos:{
        type: Sequelize.INTEGER,
        defaultValue: 0
    },
    foto_perfil:{
        type: Sequelize.STRING,
        defaultValue: 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg'
    },
    nome_img_perfil:{
        type: Sequelize.STRING,
        defaultValue: ''
    }
    
});



module.exports = vendedor;
const Sequelize = require("sequelize");
const sequelize = new Sequelize(require("../config/database"));


const produto = sequelize.define('produtos',{
    nome_produto :{
        type: Sequelize.STRING,
        allowNull: false
    },
    descricao: {
        type : Sequelize.TEXT
    },
    numero_estrelas: {
        type: Sequelize.INTEGER,
        allowNull: false,
        defaultValue: 0
    },
    preco_produto: {
        type: Sequelize.DOUBLE,
        allowNull: false
    },
    destalhes_importantes:{
        type: Sequelize.TEXT
    },
    img_filename:{
        type: Sequelize.STRING
    },
    quantidade:{
        type: Sequelize.INTEGER,
        allowNull: false
    },
    vendedorId:{
        type: Sequelize.INTEGER,
        references:{
            model:'vendedores',
            key:'id',
            onDelete: 'cascate',
            onUpdate: 'cascate'
        }
    },
    categoriaId:{
        type: Sequelize.INTEGER,
        references:{
            model:'sub_categoria',
            key: 'id',
            onDelete: 'cascate',
            onUpdate: 'cascate'
        }
    },
    n_positivos:{
        type: Sequelize.INTEGER,
        defaultValue: 0
    },
    n_negativos:{
        type: Sequelize.INTEGER,
        defaultValue: 0
    },
    nome_img_perfil:{
        type: Sequelize.STRING,
        defaultValue: ''
    }
})

module.exports = produto;
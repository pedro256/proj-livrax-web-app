const Sequelize = require("sequelize");
const sequelize = new Sequelize(require("../config/database"));



const categoria = sequelize.define('categoria_produtos',{
    nome_categoria:{
        type : Sequelize.STRING
    },
    slug: {
        type : Sequelize.STRING
    },
    descricao: {
        type: Sequelize.TEXT
    }
    ,foto: {
        type: Sequelize.TEXT
    },
    likes: {
        type: Sequelize.INTEGER,
        defaultValue: 0
    }

});

module.exports = categoria;
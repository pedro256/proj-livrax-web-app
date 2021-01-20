const Sequelize = require("sequelize");
const sequelize = new Sequelize(require("../config/database"));



const bairro = sequelize.define('bairros',{
    nome:{
        type : Sequelize.STRING,
        allowNull: false
    },
    zona:{
        type: Sequelize.STRING,
        allowNull: false
    },
    cidade: {
        type: Sequelize.INTEGER,
        references:{
            model: 'cidades',
            key: 'id',
            onDelete: 'cascate',
            onUpdate: 'cascates'
        }
    }

});

module.exports = bairro;
const Sequelize = require("sequelize");
const sequelize = new Sequelize(require("../config/database"));



const cidade = sequelize.define('cidades',{
    nome:{
        type : Sequelize.STRING,
        allowNull: false
    },
    estado: {
        type: Sequelize.INTEGER,
        references:{
            model: 'estados',
            key: 'id',
            onDelete: 'cascate',
            onUpdate: 'cascates'
        }
    }

});


module.exports = cidade;
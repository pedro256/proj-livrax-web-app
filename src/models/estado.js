const Sequelize = require("sequelize");
const sequelize = new Sequelize(require("../config/database"));



const estado = sequelize.define('estados',{
    nome:{
        type : Sequelize.STRING,
        allowNull: false
    },
    codigo: {
        type: Sequelize.INTEGER,
        allowNull: false
    }

});


module.exports = estado;
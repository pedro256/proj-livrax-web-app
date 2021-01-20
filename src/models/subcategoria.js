const Sequelize = require('sequelize');
const sequelize = new Sequelize(require('../config/database'))


const subcategoria = sequelize.define('sub_categoria',{
    nome: {
        type: Sequelize.STRING,
        allowNull: false
    },
    descricao: {
        type: Sequelize.TEXT,
        allowNull: false
    },
    slug: {
        type: Sequelize.STRING
    },
    pai_id:{
        type: Sequelize.INTEGER,
        references:{
            model: 'categoria_produtos',
            key: 'id',
            onDelete: 'cascate',
            onUpdate: 'cascates'
        }
    },
    foto:{
        type: Sequelize.STRING,
        allowNull: false,
        defaultValue:'http://localhost:3333/icons/ML%20(1)%20-%20Copia.jpg'
    },
    likes:{
        type: Sequelize.INTEGER,
        defaultValue: 0
    }
})
module.exports = subcategoria;

const multer = require('multer');
const path = require('path');
/*
  configurar a esta parte para não salvar na pasta do usuario
*/
module.exports = {
    storage: multer.diskStorage({}),
    
    limits:{
        fileSize: 2*1024*1024,
    },
    fileFilter: (req,file,cb)=>{
        const allowedMime = [
            'image/jpeg',
            'image/pjpeg',
            'image/png',
            'image/gif'
        ];

        if (allowedMime.includes(file.mimetype)){
            cb(null,true);
        }else{
            cb(new Error("Erro"));
        }
    },
    
};

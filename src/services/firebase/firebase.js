var firebaseConfig = {
    "key":"get-you-keyfile-firebase"
};
const projectId = firebaseConfig.projectId;
const keyFilename = __dirname + '/keyfile-firebase.json';
const bucketName = firebaseConfig.storageBucket;
const mime = require('mime-types');
const { Storage } = require('@google-cloud/storage');
const gcs = new Storage({ projectId, keyFilename });
const bucket = gcs.bucket(bucketName);
const crypto = new require('../crypto/index');

class Firebase {
    upload_img_produto(filePath, filename) {
        const uploadTo = `localImagem/${crypto.md5(filename)}.jpg`;
        const fileMime = mime.lookup(filePath);

        bucket.upload(filePath, {
            destination: uploadTo,
            public: true,
            metadata: { contentType: fileMime, cacheControl: "public, max-age=300" }
        }, function (err, file) {
            if (err) {
                console.log(err);
                return;
            }
        });
        return `http://storage.googleapis.com/${bucketName}/${encodeURIComponent(uploadTo)}`
    }
    upload_img_perfil_usuario(filePath, filename) {
        const uploadTo = `img_perfil_usuario/${crypto.md5(filename)}.jpg`;
        const fileMime = mime.lookup(filePath);

        bucket.upload(filePath, {
            destination: uploadTo,
            public: true,
            metadata: { contentType: fileMime, cacheControl: "public, max-age=300" }
        }, function (err, file) {
            if (err) {
                console.log(err);
                return;
            }
        });
        return `http://storage.googleapis.com/${bucketName}/${encodeURIComponent(uploadTo)}`
    }
    upload_img_perfil_vendedor(filePath, filename) {
        const uploadTo = `img_perfil_vendedor/${crypto.md5(filename)}.jpg`;
        const fileMime = mime.lookup(filePath);

        bucket.upload(filePath, {
            destination: uploadTo,
            public: true,
            metadata: { contentType: fileMime, cacheControl: "public, max-age=300" }
        }, function (err, file) {
            if (err) {
                console.log(err);
                return;
            }
        });
        return `http://storage.googleapis.com/${bucketName}/${encodeURIComponent(uploadTo)}`
    }
    
}


module.exports = new Firebase()
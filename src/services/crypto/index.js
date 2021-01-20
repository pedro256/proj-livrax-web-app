
var crypto = require('crypto');

class Crypto{
    md5(data){
        return crypto.createHash('md5').update(data).digest('hex');
    }
}

module.exports = new Crypto();
class Auth {
    clientAuth(req, res, next) {
        if ((req.session.user != undefined) && (req.session.user.tipo_conta == 0)) {
            console.log('autenticou\n');
            next();
        } else {
            res.redirect('/')
        }
    }
    vendAuth(req, res, next) {
        if ((req.session.user != undefined) && (req.session.user.tipo_conta === 1)) {
            next();
        } else {
            res.redirect('/')
        }
    }
    adminAuth(req, res, next) {
        if ((req.session.user != undefined) && (req.session.user.tipo_conta === 2)) {
            next();
        } else {
            res.redirect('/')
        }
    }

}
module.exports = new Auth();

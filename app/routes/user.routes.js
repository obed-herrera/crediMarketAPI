const {authJwt} = require("../middleware");
const controller = require("../controllers/user.controller");

module.exports = function(app){
    app.use(function(req, res, next){
        res.header(
            "Access-Control-Allow-Headers",
            "x-access-token, Origin, Content-Type, Accept"
        );
        next();
    });

    app.get("/crediMarketAPI/test/all", controller.allAccess);

    app.get(
        "/crediMarketAPI/test/user",
        [authJwt.verifyToken],
        controller.userBoard
    );

    app.get(
        "/crediMarketAPI/test/mod",
        [authJwt.verifyToken, authJwt.isModerator],
        controller.moderatorBoard
    );

    app.get(
        "/crediMarketAPI/test/admin",
        [authJwt.verifyToken, authJwt.isAdmin],
        controller.moderatorBoard
    );
};
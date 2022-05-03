import Usuario_x_EmailModel from "../models/BlogModel.js";

export const getAllUsuario_x_Email = async (req, res) => {
    try {
        const usuarioXemail = await Usuario_x_EmailModel.findAll();
        res.json(usuarioXemail);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const getUsuario_x_Email = async (req, res) => {
    try {
        const usuarioXemail = await Usuario_x_EmailModel.findAll({
            where: {
                [Op.or]: [
                    { id_usuario: req.params.id_usuario },
                    { id_email: req.params.id_email }
                ]
            }
        });
        res.json(usuarioXemail[0]);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const createUsuario_x_Email = async (req, res) => {
    try {
        await Usuario_x_EmailModel.create(req.body)
        res.json({
            "message":"Usuario_x_Email creado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const updateUsuario_x_Email = async (req, res) => {
    try {
        await Usuario_x_EmailModel.update(req.body, {
            where: {
                [Op.or]: [
                    { id_usuario: req.params.id_usuario },
                    { id_email: req.params.id_email }
                ]
            }
        });
        res.json({
            "message":"Usuario_x_Email actualizado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const deleteUsuario_x_Email = async (req, res) => {
    try {
        await Usuario_x_EmailModel.destroy({
            where: {
                [Op.or]: [
                    { id_usuario: req.params.id_usuario },
                    { id_email: req.params.id_email }
                ]
            }
        });
        res.json({
            "message":"Usuario_x_Email borrado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}
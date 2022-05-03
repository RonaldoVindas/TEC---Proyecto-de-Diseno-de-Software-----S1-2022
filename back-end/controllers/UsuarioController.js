import UsuarioModel from "../models/Usuario.js"

export const getAllUsuarios = async (req, res) => {
    try {
        const usuarios = await UsuarioModel.findAll();
        res.json(usuarios);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const getUsuario = async (req, res) => {
    try {
        const usuario = await UsuarioModel.findAll({
            where: { id_usuario: req.params.id }
        });
        res.json(usuario[0]);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const createUsuario = async (req, res) => {
    try {
        await UsuarioModel.create(req.body)
        res.json({
            "message":"Usuario creado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const updateUsuario = async (req, res) => {
    try {
        await UsuarioModel.update(req.body, {
            where: { id_usuario: req.params.id }
        });
        res.json({
            "message":"Usuario actualizado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const deleteUsuario = async (req, res) => {
    try {
        await UsuarioModel.destroy({
            where: { id_usuario: req.params.id }
        });
        res.json({
            "message":"Usuario borrado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}
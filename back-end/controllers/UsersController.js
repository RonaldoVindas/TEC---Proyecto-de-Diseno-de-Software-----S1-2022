import UserModel from "../models/Users.js"

export const getAllUsers = async (req, res) => {
    try {
        const users = await UserModel.findAll();
        res.json(users);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const getUser = async (req, res) => {
    try {
        const user = await UserModel.findAll({
            where: { id: req.params.id }
        });
        res.json(user[0]);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const getUserID = async (req, res) => {
    try {
        const user = await UserModel.findAll({
            where: { full_name: req.params.full_name }
        });
        res.json(user[0]);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const createUser = async (req, res) => {
    try {
        await UserModel.create(req.body);
        res.json({
            "message":"Usuario creado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const updateUser = async (req, res) => {
    try {
        await UserModel.update(req.body, {
            where: { id: req.params.id }
        });
        res.json({
            "message":"Usuario actualizado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const deleteUser = async (req, res) => {
    try {
        await UserModel.destroy({
            where: { id: req.params.id }
        });
        res.json({
            "message":"Usuario borrado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}
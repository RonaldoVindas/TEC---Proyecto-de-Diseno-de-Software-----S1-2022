import User_X_EmailModel from "../models/Users_X_Emails.js";

export const getAllUser_x_Email = async (req, res) => {
    try {
        const userXemail = await User_X_EmailModel.findAll();
        res.json(userXemail);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const getUser_x_Email = async (req, res) => {
    try {
        const userXemail = await User_X_EmailModel.findAll({
            where: {
                [Op.or]: [
                    { id_user: req.params.id },
                    { id_email: req.params.id }
                ]
            }
        });
        res.json(userXemail[0]);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const createUser_x_Email = async (req, res) => {
    try {
        await User_X_EmailModel.create(req.body)
        res.json({
            "message":"Usuario_x_Email creado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const updateUser_x_Email = async (req, res) => {
    try {
        await User_X_EmailModel.update(req.body, {
            where: {
                [Op.or]: [
                    { id_user: req.params.id },
                    { id_email: req.params.id }
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

export const deleteUser_x_Email = async (req, res) => {
    try {
        await User_X_EmailModel.destroy({
            where: {
                [Op.or]: [
                    { id_user: req.params.id },
                    { id_email: req.params.id }
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
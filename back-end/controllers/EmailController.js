import EmailModel from "../models/Email.js";

export const getAllEmails = async (req, res) => {
    try {
        const emails = await EmailModel.findAll();
        res.json(emails);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const getEmail = async (req, res) => {
    try {
        const emails = await EmailModel.findAll({
            where: {
                id_email: req.params.id
            }
        });
        res.json(emails[0]);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const createEmail = async (req, res) => {
    try {
        await EmailModel.create(req.body)
        res.json({
            "message":"Email creado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const updateEmail = async (req, res) => {
    try {
        await EmailModel.update(req.body, {
            where: {id_email: req.params.id}
        });
        res.json({
            "message":"Email actualizado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const deleteEmail = async (req, res) => {
    try {
        await EmailModel.destroy({
            where: {id_email: req.params.id}
        });
        res.json({
            "message":"Email borrado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}
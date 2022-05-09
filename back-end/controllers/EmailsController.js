import EmailModel from "../models/Emails.js";

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
        const email = await EmailModel.findAll({
            where: {
                id: req.params.id
            }
        });
        res.json(email[0]);
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
            where: {id: req.params.id}
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
            where: {id: req.params.id}
        });
        res.json({
            "message":"Email borrado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}
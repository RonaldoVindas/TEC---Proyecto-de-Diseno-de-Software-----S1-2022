import DepartamentoModel from "../models/Departamento.js";

export const getAllDepartamentos = async (req, res) => {
    try {
        const departamentos = await DepartamentoModel.findAll();
        res.json(departamentos);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const getDepartamento = async (req, res) => {
    try {
        const departamentos = await DepartamentoModel.findAll({
            where: {
                id_departamento:req.params.id
            }
        });
        res.json(departamentos[0]);
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const createDepartamento = async (req, res) => {
    try {
        await DepartamentoModel.create(req.body)
        res.json({
            "message":"Departamento creado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const updateDepartamento = async (req, res) => {
    try {
        await DepartamentoModel.update(req.body, {
            where: {id_departamento: req.params.id}
        });
        res.json({
            "message":"Departamento actualizado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}

export const deleteDepartamento = async (req, res) => {
    try {
        await DepartamentoModel.destroy({
            where: {id_departamento: req.params.id}
        });
        res.json({
            "message":"Departamento borrado"
        });
    } catch (error) {
        res.json( {message: error.message} );
    }
}
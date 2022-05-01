import {Sequelize} from "sequelize";

const db = new Sequelize(
    "database_app",
    "root",
    "QWER1234", {
        dialect: "mysql"
    }
);

export default db;
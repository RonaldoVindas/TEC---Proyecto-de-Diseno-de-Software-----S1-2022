import React from 'react'
import '../Style.css';
import {Link} from 'react-router-dom'

const iconStyle = {
    fontSize: 200,
    height: "200px",
    width: "200px",
    marginTop: "15px",
    marginBottom: "15px",
    marginLeft: "15px",
    marginRight: "15px",
}

const btnInfoStyle = {
    marginTop: "15px",
    marginBottom: "15px",
    marginLeft: "15px",
    marginRight: "15px"
}

const btnInfoNavStyle = {
    marginTop: "5px",
    marginBottom: "5px",
    marginLeft: "5px",
    marginRight: "5px"
}

const GestionAdminComponent = () => {
    return (
        <div>
            <nav className="navbar navbar-dark bg-primary">
                <div className="container-fluid">
                    <h1>ParkTec</h1>
                    <form className="d-flex">
                        <Link to={`/`} className="btn btn-info" style={btnInfoNavStyle} type="button">Logout</Link>
                        <Link to={`/registrarUsuario/`} className="btn btn-info" style={btnInfoNavStyle} type="button">Registrar Usuario</Link>
                    </form>
                </div>
            </nav>
            <div className='centerButton'>
                <Link to={`/agregarParqueo/`} className="btn btn-info" style={btnInfoStyle} type="button"><i className="fa-solid fa-square-parking" style={iconStyle}></i></Link>
                <Link to={`/contactarUsuario/`} className="btn btn-info" style={btnInfoStyle} type="button"><i className="fa-solid fa-envelope" style={iconStyle}></i></Link>
            </div>
            <div className='centerButton'>
                <Link to={`/editarPerfil/`} className="btn btn-info" style={btnInfoStyle} type="button"><i className="fa-solid fa-pen-to-square" style={iconStyle}></i></Link>
                <Link to={`/informes/`} className="btn btn-info" style={btnInfoStyle} type="button"><i className="fa-solid fa-chart-pie" style={iconStyle}></i></Link>
            </div>
        </div>
    )
}

export default GestionAdminComponent
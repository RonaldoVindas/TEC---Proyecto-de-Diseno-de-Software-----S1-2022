import React from 'react'
import {Link} from 'react-router-dom'

const btnInfoStyle = {
  marginTop: "15px",
  marginBottom: "15px",
  marginLeft: "15px",
  marginRight: "15px"
}

const NavbarComponent = () => {
  return (
    <div>
      <nav className="navbar navbar-dark bg-primary">
          <div className="container-fluid">
              <h1>ParkTec</h1>
              <form className="d-flex">
                  <input className="form-control me-2" type="text" placeholder="Email" aria-label="Search"/>
                  <input className="form-control me-2" type="password" placeholder="Password" aria-label="Search"/>
                  <Link to={`/gestion/`} className="btn btn-info" type="submit">Login</Link>
              </form>
          </div>
      </nav>
    </div>
  )
}

export default NavbarComponent
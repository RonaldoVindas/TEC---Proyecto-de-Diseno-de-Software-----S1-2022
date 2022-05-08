import React from 'react'
import {Link} from 'react-router-dom'
import url_img from "../parking-lot-cars.jpg"

const NavbarComponent = () => {
  return (
    <div>
      <nav className="navbar navbar-dark bg-primary">
          <div className="container-fluid">
              <h1>ParkTec</h1>
              <form className="d-flex">
                  <input className="form-control me-2" type="text" placeholder="Email" aria-label="Search"/>
                  <input className="form-control me-2" type="password" placeholder="Password" aria-label="Search"/>
                  <Link to={`/gestion`} className="btn btn-info" type="submit">Login</Link>
              </form>
          </div>
      </nav>
      <div className="bg_image"
        style={{
          backgroundImage: `url(${url_img})`,
          backgroundRepeat: "no-repeat",
          backgroundSize: "cover",
          height: 657
        }}>
      </div>
    </div>
  )
}

export default NavbarComponent
import axios from 'axios'
import '../Style.css'
import {useState, useEffect} from 'react'
import {Link} from 'react-router-dom'

const URI = 'http://localhost:8000/parqueo/'

const btnInfoNavStyle = {
  marginTop: "5px",
  marginBottom: "5px",
  marginLeft: "5px",
  marginRight: "5px"
}

const ShowParqueoComponent = () => {
  const [parkings, setParking] = useState([])
    useEffect( () => {
      getParkings()
    },[])

  const getParkings = async () => {
      const res = await axios.get(URI);
      setParking(res.data);
  }

  const deleteParqueo = async (id) => {
      await axios.delete(`${URI}${id}`);
      getParkings();
  }
  return (
    <div>
      <nav className="navbar navbar-dark bg-primary">
          <div className="container-fluid">
              <h1>ParkTec</h1>
              <form className="d-flex">
                  <Link to={`/gestion`} className="btn btn-info" style={btnInfoNavStyle} type="submit">Regresar</Link>
                  <Link to={`/crearParqueo`} className="btn btn-info" style={btnInfoNavStyle} type="submit">Crear Parqueo</Link>
              </form>
          </div>
      </nav>
      <div className='row'>
        { parkings.map((parking) => (
          <div className='col-sm-4'>
            <div className="card" key={parking.id}>
              <div className="card-body">
                <h1>{parking.name_parking}</h1>
                <p>Descripción: {parking.description_parking}</p>
                <p>Localización: {parking.location_parking}</p>
                <p>Horario: {parking.schedule_parking}</p>
                <Link to={`/editarParqueo`} className="btn btn-info" style={btnInfoNavStyle} type="submit">Editar Parqueo</Link>
                <button onClick={ () => deleteParqueo(parkings.id)} className='btn btn-danger' style={btnInfoNavStyle}><i className="fa-solid fa-circle-minus"></i></button>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  )
}

export default ShowParqueoComponent
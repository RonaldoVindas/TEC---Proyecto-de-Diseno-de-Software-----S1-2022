import axios from 'axios'
import '../Style.css'
import {useState, useEffect} from 'react'
import {Link} from 'react-router-dom'
import { useNavigate } from 'react-router-dom';

const URI = 'http://localhost:8000/parking/'

const btnInfoNavStyle = {
    marginTop: "5px",
    marginBottom: "5px",
    marginLeft: "5px",
    marginRight: "5px"
  }

const CompCreateParqueo = () => {
    const [name_parking, setName_parking] = useState('')
    const [description_parking, setDescription_parking] = useState('')
    const [location_parking, setLocation_parking] = useState('')
    const [schedule_parking, setSchedule_parking] = useState('')
    const navigate = useNavigate()

    const createParking = async (e) => {
        e.preventDefault()
        await axios.post(URI, {name_parking: name_parking, description_parking: description_parking, location_parking: location_parking, schedule_parking: schedule_parking})
        navigate('/parking')
    }

    return(
        <div className='createParqueo'>
            <nav className="navbar navbar-dark bg-primary">
                <div className="container-fluid">
                    <h1>ParkTec</h1>
                    <form className="d-flex">
                        <Link to={`/parking`} className="btn btn-info" style={btnInfoNavStyle} type="submit">Return</Link>
                    </form>
                </div>
            </nav>
            <div className='container col-4'>
                <h3>Crear Usuario</h3>
                <form onSubmit={createParking}>
                    <div className='mb-3'>
                        <label className='form-label'>Parking Name</label>
                        <input
                            value={name_parking}
                            onChange={(e) => setName_parking(e.target.value)}
                            type="text"
                            className='form-control'/>
                    </div>
                    <div className='mb-3'>
                        <label className='form-label'>Description</label>
                        <textarea
                            value={description_parking}
                            onChange={(e) => setDescription_parking(e.target.value)}
                            type="text"
                            className='form-control'/>
                    </div>
                    <div className='mb-3'>
                        <label className='form-label'>Location</label>
                        <input
                            value={location_parking}
                            onChange={(e) => setLocation_parking(e.target.value)}
                            type="text"
                            className='form-control'/>
                    </div>
                    <div className='mb-3'>
                        <label className='form-label'>Schedule</label>
                        <input
                            value={schedule_parking}
                            onChange={(e) => setSchedule_parking(e.target.value)}
                            type="text"
                            className='form-control'/>
                    </div>
                    <button type='submit' className='btn btn-primary'>Create</button>
                </form>
            </div>
        </div>
    )
}

export default CompCreateParqueo
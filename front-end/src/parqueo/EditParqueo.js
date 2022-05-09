import axios from 'axios';
import { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import '../Style.css'
import {Link} from 'react-router-dom'

const URI = 'http://localhost:8000/parqueo/'

const btnInfoNavStyle = {
    marginTop: "5px",
    marginBottom: "5px",
    marginLeft: "5px",
    marginRight: "5px"
  }

const CompEditParqueo = () => {
    const [name_parking, setName_parking] = useState('')
    const [description_parking, setDescription_parking] = useState('')
    const [location_parking, setLocation_parking] = useState('')
    const [schedule_parking, setSchedule_parking] = useState('')
    const navigate = useNavigate()
    const {id} = useParams()

    const updateParqueo = async (e) => {
        e.preventDefault()
        await axios.put(URI+id, {
            name_parking: name_parking,
            description_parking: description_parking,
            location_parking: location_parking,
            schedule_parking: schedule_parking
        })
        navigate('/parqueo')
    }
    
    useEffect( () => {
        getParqueoById()
    }, [])
    
    const getParqueoById = async () => {
        const res = await axios.get(URI+id)
        setName_parking(res.data.name_parking)
        setDescription_parking(res.data.description_parking)
        setLocation_parking(res.data.location_parking)
        setSchedule_parking(res.data.schedule_parking)
    }

    return(
        <div className='createParqueo'>
            <nav className="navbar navbar-dark bg-primary">
                <div className="container-fluid">
                    <h1>ParkTec</h1>
                    <form className="d-flex">
                        <Link to={`/parqueo`} className="btn btn-info" style={btnInfoNavStyle} type="submit">Regresar</Link>
                    </form>
                </div>
            </nav>
            <div className='container col-4'>
                <h3>Modify Parking</h3>
                <form onSubmit={updateParqueo}>
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
                        <textarea
                            value={schedule_parking}
                            onChange={(e) => setSchedule_parking(e.target.value)}
                            type="text"
                            className='form-control'/>
                    </div>
                    <button type='submit' className='btn btn-primary'>Update</button>
                </form>
            </div>
        </div>
    )
}

export default CompEditParqueo
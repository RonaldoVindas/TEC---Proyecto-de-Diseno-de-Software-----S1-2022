import axios from 'axios'
import '../Style.css'
import {useState, useEffect} from 'react'
import {Link} from 'react-router-dom'
import { useNavigate } from 'react-router-dom';

const URI = 'http://localhost:8000/management/'

const btnInfoNavStyle = {
    marginTop: "5px",
    marginBottom: "5px",
    marginLeft: "5px",
    marginRight: "5px"
  }

const CompCreateUsuario = () => {
    const [description_department, setDescription_department] = useState('')
    const [email, setEmail] = useState('')
    const [full_name, setFull_name] = useState('')
    const [password_user, setPassword_user] = useState('')
    const [type_user, setType_user] = useState('')
    const [phone_number, setPhone_number] = useState('')
    const [id_departament, setId_departament] = useState('')
    
    const [departments, setDepartments] = useState([])
    useEffect( () => {
      getDepartments()
    },[])
    const getDepartments = async () => {
        const res = await axios.get(URI);
        setDepartments(res.data);
    }
    const navigate = useNavigate()

    const createUser = async (e) => {
        e.preventDefault()
        await axios.post(URI, {full_name: full_name, password_user: password_user, type_user: type_user, phone_number: phone_number, id_departament: id_departament, email: email})
        navigate('/gestion')
    }

    return(
        <div className='createParqueo'>
            <nav className="navbar navbar-dark bg-primary">
                <div className="container-fluid">
                    <h1>ParkTec</h1>
                    <form className="d-flex">
                        <Link to={`/management`} className="btn btn-info" style={btnInfoNavStyle} type="submit">Return</Link>
                    </form>
                </div>
            </nav>
            <div className='container col-4'>
                <h3>Crear Usuario</h3>
                <form onSubmit={createUser}>
                    <div className='mb-3'>
                        <label className='form-label'>Email</label>
                        <input
                            value={email}
                            onChange={(e) => setEmail(e.target.value)}
                            type="text"
                            className='form-control'/>
                    </div>
                    <div className='mb-3'>
                        <label className='form-label'>Password</label>
                        <input
                            value={password_user}
                            onChange={(e) => setPassword_user(e.target.value)}
                            type="password"
                            className='form-control'/>
                    </div>
                    <div className='mb-3'>
                        <label className='form-label'>Full Name</label>
                        <input
                            value={full_name}
                            onChange={(e) => setFull_name(e.target.value)}
                            type="text"
                            className='form-control'/>
                    </div>
                    <div className='mb-3'>
                        <label className='form-label'>Phone Number</label>
                        <input
                            value={phone_number}
                            onChange={(e) => setPhone_number(e.target.value)}
                            type="number"
                            className='form-control'/>
                    </div>
                    <div className='mb-3'>
                        <label className='form-label'>Type of User</label>
                        <select class="form-select" aria-label="Default select example">
                            <option selected>Select a type</option>
                            <option value={type_user} onChange={(e) => setType_user(e.target.value)} className="form-select">Admin</option>
                            <option value={type_user} onChange={(e) => setType_user(e.target.value)} className="form-select">User</option>
                        </select>
                    </div>
                    <div className='mb-3'>
                        <label className='form-label'>Department</label>
                        <select class="form-select" aria-label="Default select example">
                            <option selected>Select a Department</option>
                            { departments.map((department) => (
                                <option value={department.id} onChange={(e) => setId_departament(e.target.value)} className="form-select">{department.name_department}</option>
                            ))}
                        </select>
                    </div>
                    <div className='mb-3'>
                        <label className='form-label'>Job Description</label>
                        <textarea
                            value={description_department}
                            onChange={(e) => setDescription_department(e.target.value)}
                            type="text"
                            className='form-control'/>
                    </div>
                    <button type='submit' className='btn btn-primary'>Create</button>
                </form>
            </div>
        </div>
    )
}

export default CompCreateUsuario
import './Style.css';
import ShowParqueoComponent from './parqueo/ShowParqueo';
import CompCreateParqueo from './parqueo/CreateParqueo';
import CompEditParqueo from './parqueo/EditParqueo';
import CompCreateUsuario from './usuario/CreateUsuario';
import CompEditUser from './usuario/EditUsuario';
import NavbarComponent from './components/Navbar';
import GestionAdminComponent from './components/gestionAdmin';
import { BrowserRouter, Route, Routes, Switch } from 'react-router-dom';

function App() {
  return (
      <BrowserRouter>
        <Routes>
          <Route path='/' element={<NavbarComponent/>}/>
          <Route path='/management' element={<GestionAdminComponent/>}/>
          <Route path='/parking' element={<ShowParqueoComponent/>}/>
          <Route path='/createParking' element={<CompCreateParqueo/>}/>
          <Route path='/editParking/:id' element={<CompEditParqueo/>}/>
          <Route path='/registerUser' element={<CompCreateUsuario/>}/>
          <Route path='/editUser/:id' element={<CompEditUser/>}/>
        </Routes>
      </BrowserRouter>
  );
}

export default App;

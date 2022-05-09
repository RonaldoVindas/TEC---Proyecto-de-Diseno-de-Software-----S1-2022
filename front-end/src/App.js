import './Style.css';
import ShowParqueoComponent from './parqueo/ShowParqueo';
import CompCreateParqueo from './parqueo/CreateParqueo';
import CompEditParqueo from './parqueo/EditParqueo';
import NavbarComponent from './components/Navbar';
import GestionAdminComponent from './components/gestionAdmin';
import { BrowserRouter, Route, Routes, Switch } from 'react-router-dom';

function App() {
  return (
      <BrowserRouter>
        <Routes>
          <Route path='/' element={<NavbarComponent/>}/>
          <Route path='/gestion' element={<GestionAdminComponent/>}/>
          <Route path='/parqueo' element={<ShowParqueoComponent/>}/>
          <Route path='/crearParqueo' element={<CompCreateParqueo/>}/>
          <Route path='/editarParqueo/:id' element={<CompEditParqueo/>}/>
        </Routes>
      </BrowserRouter>
  );
}

export default App;

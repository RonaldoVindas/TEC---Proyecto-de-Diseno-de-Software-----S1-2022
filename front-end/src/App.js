import './Style.css';
import CompShowBlogs from './blog/ShowBlogs';
import ShowParqueoComponent from './parqueo/ShowParqueo';
import CompCreateBlog from './blog/CreateBlog';
import CompEditBlog from './blog/EditBlog';
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
          <Route path='/create' element={<CompCreateBlog/>}/>
          <Route path='/edit/:id' element={<CompEditBlog/>}/>
        </Routes>
      </BrowserRouter>
  );
}

export default App;

import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'
import CssBaseline from '@material-ui/core/CssBaseline'

import Portada from './pages/portada'
import Inicio from './pages/inicio'
import Profile from './pages/profile'
import Producto from './pages/product'
import Teoria from './pages/teoria'
import Category from './pages/category'
import Soporte from './pages/support'
import Errore from './pages/error'

function App() {
  return (

    <Router>
      <CssBaseline />
      {/* The rest of the application */}
      <div className="App">
        <Switch>
          <Route path='/' exact component={Portada} />
          <Route path='/inicio' exact component={Inicio} />
          <Route path='/profile' exact component={Profile} />
          <Route path='/teoria' exact component={Teoria} />
          <Route path='/category/:id/:id' exact component={Producto} />
          <Route path='/category/:id' exact component={Category} />
          <Route path='/soporte' exact component={Soporte} />
          <Route exact component={Errore} />
        </Switch>
      </div>
    </Router>

  )
}

export default App;

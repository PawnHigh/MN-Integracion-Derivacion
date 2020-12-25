import React from 'react'
import ReactDOM from 'react-dom'
import App from './App/App'
import * as serviceWorker from './serviceWorker'
import "./firebase"

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
serviceWorker.register()
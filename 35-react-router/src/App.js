import React from 'react';
import './App.css';
import Nav from './Nav.js';
import Journal from './Journal.js';
import About from './About.js';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';


function App() {
  return (
    <Router>
    <div className="App">
      <Nav />
      <Route path="/" exact component={Home} />
      <Route path="/about" component={About} />
      <Route path="/journal" component={Journal} />
    </div>
    </Router>
  );
}

const Home = () => (
  <div>
    <h1>Home Page!</h1>
  </div>
)

export default App;

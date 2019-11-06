import React from 'react';
import './App.css';
import {Link} from 'react-router-dom';

function Nav() {

    const navStyle= {
        color: 'white'
    };

  return (
    <nav>
    <Link to="/" style={navStyle}><h1>My Mod 5 Project Journal</h1></Link>
      <ul className="nav-links">
          <Link to="/about" style={navStyle}>About</Link>
          <Link to="/journal" style={navStyle}>Journal</Link>
      </ul>
    </nav>
  );
}

export default Nav;
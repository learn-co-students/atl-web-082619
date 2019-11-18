import React, { Component } from "react";
import ReactDOM from "react-dom";
import "./index.css";
import "./App.css";

import Counter from './Counter';
import Header from './Header';

import { Provider } from 'react-redux';
import store from './store';

class App extends Component {
  render() {
    return (
        <div className="App">
          <Header />
          <Counter  />
        </div>
    );
  }
}


ReactDOM.render(
  <Provider store={store}>
    <App />
  </Provider>
    , document.getElementById("root"));

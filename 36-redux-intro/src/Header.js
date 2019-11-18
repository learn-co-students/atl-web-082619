import React, { Component } from 'react';
import { connect } from 'react-redux';
import logo from "./logo.svg";

class Header extends Component {
  renderDescription = () => {
    return `The current count is less than ${this.props.count}`;
  };

  render() {
    return (
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <h1 className="App-title">Welcome to React</h1>
        <h3>{this.renderDescription()}</h3>
      </header>
    );
  }
}

const mapStateToProps = (state) => {
  const remainder = state.count % 5;
  const upToNext = 5 - remainder;
  const displayableCount = state.count + upToNext
  return { count: displayableCount}
}

export default connect(mapStateToProps)(Header);

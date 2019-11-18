import React from 'react';
import {connect} from 'react-redux';

function Counter (props) {
  return (
    <div className="Counter">
      <h1>{props.count}</h1>
      <button onClick={props.decrement}> - </button>
      <button onClick={props.increment}> + </button>
    </div>
  );
}

function mapStateToProps(state){
  return {
    count: state.count
  }
}

function mapDispatchToProps(dispatch){
  return {
    increment: function(){
      return dispatch({type: 'INCREMENT_COUNT'})
    },
    decrement: function(){
      return dispatch({type: 'DECREMENT_COUNT'})
    }
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(Counter);

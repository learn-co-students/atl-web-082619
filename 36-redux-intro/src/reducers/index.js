const reducer = (state={ count: 99 }, action) => {
  switch (action.type) {
    case 'INCREMENT_COUNT':
      return {count: state.count + 1 };
    case 'DECREMENT_COUNT':
      return {count: state.count - 1 };
    default:
      return state;
  }
};

export default reducer;

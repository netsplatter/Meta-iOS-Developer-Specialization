import Fruits from "./Fruits";
import FruitsCounter from "./FruitsCounter";
import React from "react";

function App() {
  const [fruits] = React.useState([
    { fruitName: 'apple', id: 1 },
    { fruitName: 'apple', id: 2 },
    { fruitName: 'plum', id: 3 },
  ]);
  
  return (
    <div className="App">
      <h1>Where should the state go?</h1>
      {fruits.map(f => <Fruits fruitName={f.fruitName} id={f.id} />)}
      <FruitsCounter count={fruits.length} />
    </div>
  );
};

export default App;
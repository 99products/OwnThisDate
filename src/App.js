import { useState } from "react";
import Calendar from "react-calendar";
import "./App.css";

function App() {
  const [value, onChange] = useState(new Date());

  const onDateSelected = (value, event) => {
    console.log('Selected date', value)
  }

  return (
    <div className="App">
      <div className="Sample__container">
        <main className="Sample__container__content">
          <Calendar onChange={onChange} onClickDay={onDateSelected} value={value} />
        </main>
      </div>
    </div>
  );
}

export default App;

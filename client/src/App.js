import React, { Component } from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";
import "./App.css";

import Landing from "./components/Landing";
import HiDrogo from "./components/HiDrogo";

class App extends Component {
    render() {
        return (
            <Router>
                <div className="App">
                    <Route exact path="/" component={Landing} />
                    <Route exact path="/hello" component={HiDrogo} />
                </div>
            </Router>
        );
    }
}

export default App;

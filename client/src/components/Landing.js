import React, { Component } from "react";
import { Link } from "react-router-dom";

class Landing extends Component {
    render() {
        return (
            <React.Fragment>
                <h1>Hello, World!</h1>
                <Link to="/hello">
                    <button type="submit">Daenerys Amar Rani</button>
                </Link>
            </React.Fragment>
        );
    }
}

export default Landing;

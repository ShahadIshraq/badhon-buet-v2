import React, { Component } from "react";

class HiDrogo extends Component {
    constructor(props) {
        super(props);
        this.state = {
            msg: ""
        };
    }

    componentWillMount() {
        fetch("http://localhost:3000/hello")
            .then(res => res.json())
            .then(data => this.setState({ msg: data["msg"] }))
            .catch(e => console.error(e));
    }

    render() {
        return (
            <React.Fragment>
                <h1>{this.state.msg}</h1>
            </React.Fragment>
        );
    }
}

export default HiDrogo;

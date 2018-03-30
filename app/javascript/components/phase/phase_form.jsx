import React from "react"
import PropTypes from "prop-types"

class PhaseForm extends React.Component {
  render(){
    return (
      <form>
        <input name='name' placeholder='New phase name'/>
        <input type='submit' value='Careate Phase'/>
      </form>
    );
  }
}

export default PhaseForm

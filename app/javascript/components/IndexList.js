import React from "react"
import PropTypes from "prop-types"

class IndexList extends React.Component {
  render () {
    let items = this.props.data
    
    let listItems = items.map((item) =>
      <tr key={item.id}>
        <td>{item.id}</td>
        <td>{item.name}</td>
        <td>{item.created_at}</td>
        <td>{item.category_name}</td>
      </tr>
    );

    return (
      <table className="striped">
      <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Created at</th>
            <th>Phase Category</th>
        </tr>
      </thead>

      <tbody>
        {listItems}
      </tbody>
    </table>
    );
  }
}

export default IndexList

import React from "react"
import PropTypes from "prop-types"
import ListItem from "./ListItem.jsx"

class IndexList extends React.Component {
  render () {
    let items = this.props.items

    let listItems = items.map((item) =>
      <ListItem key={item.id} item={item}/>
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

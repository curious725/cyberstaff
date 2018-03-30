import React from "react"
import PropTypes from "prop-types"

class ListItem extends React.Component {
  render() {
    return (
      <tr>
        <td>{this.props.item.id}</td>
        <td>{this.props.item.name}</td>
        <td>{this.props.item.created_at}</td>
        <td>{this.props.item.category_name}</td>
      </tr>
    );
  }
};

export default ListItem

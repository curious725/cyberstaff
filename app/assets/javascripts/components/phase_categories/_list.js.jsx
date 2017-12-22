class PhaseCategoriesTable extends React.Component {
  constructor(data) {
    super();
    this.categories = data.phase_categories
  }

  tableHead() {
    return (
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Created at</th>
      </tr>
    )
  }

  categoryItems() {
    return this.categories.map((number) =>
      <tr key={number.id}>
        <td>{number.id}</td>
        <td>{number.name}</td>
        <td>{number.created_at}</td>
      </tr>
    );
  }

  render() {
    return (
      <table>
        <thead>{this.tableHead()}</thead>
        <tbody>{this.categoryItems()}</tbody>
      </table>
    )
  }
}

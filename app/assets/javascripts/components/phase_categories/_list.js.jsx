class PhaseCategoriesList extends React.Component {
  constructor(data) {
    super();
    this.categories = data.phase_categories
  }

// welcome(props) {
//   return <h1>Hello, {props.name}</h1>;
// }

// <div>
//   <this.welcome name="Sara" />
//   <this.welcome name="Cahal" />
//   <this.welcome name="Edite" />
// </div>

  listCategories(){
    return this.categories.map((number) =>
      <li key={number.id}>{number.created_at}</li>
    );
  }

  render() {
    return (
      <ul>{this.listCategories(name="Nazar")}</ul>
    )
  }
}

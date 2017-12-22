class PhaseCategoriesList extends React.Component {
  constructor() {
    super();
  }

// const element = (
//   <div>
//     <h1>Hello Nazar!</h1>
//     <h2>Good to see you here.</h2>
//   </div>
// );

  welcome(props) {
    return <h1>Hello, {props.name}</h1>;
  }

  render() {
    return(
      <div>
        <this.welcome name="Sara" />
        <this.welcome name="Cahal" />
        <this.welcome name="Edite" />
    </div>
    )
  }
}

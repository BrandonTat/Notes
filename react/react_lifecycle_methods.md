### React: Lifecycle Methods

* Methods that get called implicitly by React.
* Allow us to add functionality at various points in a applications lifecyle.
  * Example: Component might need to fetch data from the server when it is loaded onto the DOM.
* Methods prefixed with ```will``` are called right before something happens, while methods prefixed with ```did``` are called right after something happens.

#### componentWillMount()
* Invoked immediately before mounting occurs.
* Called before render().
  * Setting state synchronously will not cause re-rendering, since component is not rendered yet.

#### componentDidMount()
* Good place to load data from another endpoint (fetch data).
* Setting state in this method will cause re-rendering.

#### componentWillReceiveProps()
* ```componentWillReceiveProps(nextProps)```
* Invoked before a mounted component receives new props.
* **React may call even if props have changed. Therefore be sure to compare this.props and nextProps if your doing something in response to a change in props**.

#### componentWillUpdate()
* ```componentWillUpdate(nextProps, nextState)```
* Invoked immediately before rendering when new props or state are received.
* Opportunity to prepare for an update occurs.

#### componentDidUpdate()
* ```componentDidUpdate(prevProps, prevState)```
* Opportunity to operate on the DOM after a component has updated.

#### componentWillUnmount()
* Before a component is unmounted and destroyed.
* Perform any necessary cleanup in this function.
  * Invalidating timers, resetting values, etc.

# React.js

### What React is
React is a front-end JavaScript library used for creating UI components.
When data changes, React updates the UI components associated with the
data.

### What React is not
React != MVC front-end framework. No models, controllers, collections,
or templates.

### Benefits of React
As applications grow in size and complexity, it becomes harder and harder
to manage event handlers and callbacks responsible for updating your views.

Main idea behind React is to manage all UI updates when any part of the
state changes. You will no longer have to manually update parts of your view in response to user input. Instead when state changes, React will re-render
ALL elements.

* "Virtual DOM" allows this process of updating entire app to be fast.
Only elements that are affected are updated.

Also provides a simple user interface for front-end developers.

### How it works
Traditional JavaScript applications require you to look at which pieces of the data updated and change the corresponding elements within the DOM.

React on the other hand only re-loads elements on the DOM that have been
updated, only applying minimal changes to the DOM. This process is called
*reconcilliation*.

*Reconcilliation* is so fast that we don't need to check which parts are
re-rendering, since we can re-render a page in milliseconds.


### React Components
These are the key building components of React projects. They are JavaScript functions that return HTML. When building React components, use the Single Responsibility Principle to decide what should be separate components.

## Anatomy of React Components: Prop, State, & JSX
* Inherit from React.Component
  * Need to add React module to package.JSON
* Every component needs a constructor and render method.
* Components can receive data two ways:

  1. Props
    * Attributes inherited from parent component.
    * These attributes should not be mutated.
  2. State
    * Mutable data owned by the component.
    * Generally updated through user input.
    * The initial value of this data is set in the constructor.

## Anatomy of React Components: Render
* Describes what a component should look like at any moment in time.
* Return only one HTML element.
* Function knows props and state and returns HTML.
* Render function is never explicitly called.
  * Called when there are changes to data within props or state.
  * ``` this.setState({ count: this.state.count + 1}) ```
* Uses JSX, similar to erb. Allows us to embed JS code within HTML.

## Anatomy of React Components: Events
* Handler set by passing prop: onClick.
* Value is pointer to handler function.
* Event handler function is passed event object, just like jQuery event.

## Rendering components in browser
* Need to wait until DOM has fully loaded so we have a target to render into.
* ReactDOM.render will replace entire content of target HTML element.
``` ReactDOM.render(< {React Component} />, {where to render}) ```

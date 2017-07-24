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

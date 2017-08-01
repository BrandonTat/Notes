# Redux

### Setup
1. Get the store ready
  * rootReducer combines all other reducers together using **combineReducers()**
  * Root component creates the store using **createStore(rootReducer)**
2. Set up communication between store and the components
  * Root component wraps its subcomponent with **provider component**
  * Gives all components wrapped access to store without having to explicitly pass the store down
  * Allow wrapped components access to store using **connect()**

### Data Flow
1. View requests an action, action creator formats and returns it
2. Action passed to dispatcher
3. Middleware intercepts action and decides if it needs to make any AJAX requests or pass along the action
4. Store receives action and passes the action and the current state to the root reducer
5. Root reducer splits up the state and action and passes each to its separate sub-reducers
6. Sub-reducers carry out the action and pass the new state objects back to the root reducer
7. The root reducer combines all the sub-states and passes the updated state object back to the store
8. Store replaces the old state object with the new state object and tells the view there is a new state
9. View layer triggers a re-rendering

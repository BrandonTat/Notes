# Rails Routing

### Purpose of Router
* Takes in a request, determines which controller to send the request and then forwards the request.
* Determines what are valid paths and what actions to run.
* Recognizes URLs and determines which controller method to dispatch, by checking HTTP method and path.

### How it works
1. Checks routes
2. Initializes controller (if same route)
3. Calls the correct action

### Resource Routing: Rails Default
```ruby
# config/routes.rb
FlickrClone::Application.routes.draw do
  resources :photos
end
```
* Generates a mapping from URL paths to controller actions.
* Running **rake routes** shows available mappings.
* Creating resource routes in this file will create routing helper methods that controllers and views can use. (Instead of having interpolate URL),
* Once routes are setup, you can now define the controller actions.

### Nesting Routes
* Sometimes may need to rest routes, for example you have two resources superheroes and abilities. You may want to nest supehero and abilities to display all the abilities of a specific supehero.

```ruby
# config/routes.rb
Rails.application.routes.draw do
  resources :suphero do
    resource :abilities, only: [:index]
  end

  resources :abilities
end
```

### RESTful Idea
* A design concept where URL refer to resource(s) and the HTTP methods define what can be done to the resource(s).
* Think of all items and actions in terms of resources and CRUD.

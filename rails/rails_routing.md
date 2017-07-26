# Rails Routing

### Purpose of Router
* Determines what are valid paths and what actions to run.
* Recognizes URLs and determines which controller method to dispatch, by checking HTTP method and path.

### Resource Routing: Rails Default
```ruby
# config/routes.rb
FlickrClone::Application.routes.draw do
  resources :photos
```
* Generates a mapping from URL paths to controller actions.
* Running **rake routes** shows available mappings.
* Creating resource routes in this file will create routing helper methods that controllers and views can use. (Instead of having interpolate URL),
* Once routes are setup, you can now define the controller actions.

### RESTful Idea
* A design concept where URL refer to resource(s) and the HTTP methods define what can be done to the resource(s).
* Think of all items and actions in terms of resources and CRUD.

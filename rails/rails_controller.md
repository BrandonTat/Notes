## Rails Routing

#### Purpose
* After the router has decided which controller to call and which action to run, the controller must handle the request and take the appropriate action.
* It could fetch or update data from a model and create/send a response or redirect to another path.
* Controller classes inherit from the ApplicationController.
* Naming convention is to pluralize the model and add on Controller.

#### Strong Parameters
* Three kinds of parameters possible in a web application:
  1. Query string (from URL)
  2. Body (user input)
  3. URL params/route params (wildcard - photos/:id)
* Rails mixes both of the above parameters into a single **params** object.
* When assigning values in controller actions, we should be careful about which values can be reassigned.
  * For example a user should be able to update the title and body of a post, but they should not be able to update who authored the post.
  * **#permit** allow us to whitelist what is permitted to update.

```ruby
class CatController < ActionController::Base
  def create
    Cat.create!(cat_params)
  end

  def update
    # params[:id] is a routing parameter; more in a sec!
    @cat = Cat.find(params[:id])
    @cat.update!(cat_params)
    render json: @cat
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :age)
  end
end
```

#### Controllers & render json:
* All controller actions must end in some sort of response to the requestor. Can do this by:
  * render
  * redirect

#### The request-response lifecycle
1. Client makes an HTTP request
2. Webserver receives request and hands it off to Rails
3. Request goes to Rails router.
4. Router determines what controller to use.
5. Router creates an instance of the controller and calls the correct controller action.
6. Controller instance takes over and determines whether to return a response or redirect to another path.
7. Request is over, the connection is closed, and the instance of the controller is discarded.

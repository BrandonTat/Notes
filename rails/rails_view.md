# Rails: View

* Instance variables defined in controller actions will be available in the corresponding view.
  * For example, an instance variable defined in the index controller action will be available in **index.html.erb**.
* ERB (Embedded Ruby Code) allows the use of ruby code/logic within HTML files.

```
  <% Ruby logic %>
  <%= Ruby code to render %>
```

* Views in Rails inherit from **app/views/layout/application.html.erb**, similar to **index.html**.
  * Rails automatically builds this file, we just have to create and fill out the corresponding views.

```ruby
def index
  @books = Book.all
  render :index
end

def show
  @book = Book.find_by(params[:id])

  if @book
    render :show
  else
    redirect_to books_url
  end
end
```

* Redirect and render are not the same as return, therefore you can only redirect OR render, you can not do both.

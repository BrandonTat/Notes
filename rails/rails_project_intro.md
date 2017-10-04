# Starting new Rails project

1. rails new #{project_name}
2. start rails server
  * ```rails server```
3. generate model
  * ```rails generate #{model}```
  * model name convention is singular
  * generates the model and the migration
4. run migration
  * ```rails db:migrate```
5. add routes
  * ```root to: 'static_pages#root'```
  * ```resources: #{controllers}```
  * ```resources: #{controller}, only: [:index, :show, :create, :update, :destroy]```
  * add in **routes.rb** file
  * creates all methods for controller  
6. create controllers
  * ```rails generate controller #{controller_names}```
  * ```rails generate controller staticPages```
  * controller name convention is plural

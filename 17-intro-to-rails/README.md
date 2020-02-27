# Intro to Rails
# Question:
- Whiteboarding -> 
    - in place algorithms vs other ones.

## Some struggles from working with Sinatra
## Questions in general you want to go over so far?
- Nested data for forms and creating [][]
- routing and defining methods in the controller
- general workflow through MVC
 
## SWBATs

- Create a new Rails application
- Describe differences between Sinatra routing & Rails routing
- Generate a model
- Create routes
- Generate a controller
- Create actions/methods for a RESTful controller
- Create views


#### Generators that you should get comfortable and familiar using.
- 
- 
- 
- 

### Outline

- [ ] Compare creating an app with Sinatra to creating an app with Rails
- [ ] Generate a model
- [ ] Create controller, routes, and views
  - [ ] Make route and controller action for `index` and `show` with custom routes
  - [ ] Demonstrate implicit rendering
  - [ ] Refactor routes to use `resources`
- [ ] Demonstrate `link_to` helper and path helpers
  - [ ] `rails routes` and `/rails/info/routes`

### Helpful Bookmarks

- [Rails Routing from the Outside In](https://guides.rubyonrails.org/routing.html)
- [link_to](https://apidock.com/rails/ActionView/Helpers/UrlHelper/link_to)

### Rails Commands
- `rails new <app-name>` - create a new Rails app
- `rails c` - open a console
- `rails s` - start server
- `rails routes` - display all the routes in your app, also can viewed at http://localhost:3000/rails/info/routes
- `rails g migration <migration-name> <attribute:data-type> <attribute:data-type>` - generate a migration
- `rails g model <model-name> <attribute:data-type> <attribute:data-type>` - generate a model and a migration to create the table with specified columns
- `rails db:migrate` - run all pending migrations (same as `rake db:migrate` in Mod 1/Sinatra)
# Questions
- Deep dive into DB[:conn] and this connection
- Pulling the Id from a table and storing as a data point in ruby
- Certain methods (name:, grade:) -> mass assignment
- Rake tasks
- Outline of files structors and order
# ORM (Object Relational Mapping)

- Mass assignment ; what is the best way to pass data into our initialize.
- 
### SWBATs
* Define Object Relational Mapper \(ORM\)
* Distinguish between ORM and SQL
* Demonstrate that ORMs are the pattern connecting scripting languages and databases
* Explain how the `sqlite` gem works as a driver or wrapper around SQL
* Implement HEREDOCs to be saved in variables to be executed by SQL driver
* Perform persistent CRUD actions on two separate models

### App Demo and Structure
#### Steps for execution of new app Structure:
1. In your `Gemfile` : list out all the gems you are going to refer to and use inside if your program
    ```Ruby
    #sample gem 
    gem 'pry'
    ```
2. Bundle your gems in you `environment.rb` file including in the `models` that you are going to use in your project
    ```Ruby
    require "bundler" # this will be the gem you use to require the gems from your gemfile
    Bundler.require # this will go through and require all of the gems you are using in the same order listed in your Gemfile.
3. Require the environment in your `Rakefile` so that you can reference all of your gems and all of your files from your tasks.

### Define User Stories for our app
- As a user, I want to be able to register to the Jurassic Park.
    - Make a new visitor ("Soundarya, 30, 5.7)
    - CREATE
    - insert_data
- As a user, I want to change my name.
    - Visitor class 
    - Update (id, name)
- As a user, I want to be able to leave a park.
    - Visitor table
    - DELETE the visitor row/instance
    - id
- As a user, I want to be able to add a dinosaur to the park.
- As a user, I want to be able to change the height of a dinosaur.
- As a user, I want to remove a dinosaur from the park since it is dangerous.
- As a user, I want to be able to eat some food.
    - Visitor -> find the visitor object we want
    - Food -> find the food object we want
    - Foods_visitor (visitor_id, food_id)
    - FoodsVisitor.new(visitor_id, food_id)
- As a user, I want to be able to visit and see a dinosaur.
    - Dinosaur
    - Visitor
    - DinosaursVisitor
    - DinosaurVisitor.new(visitor_id, dinosaur_id)
# Reference : 
[SQLite Doc](https://www.rubydoc.info/github/luislavena/sqlite3-ruby/SQLite3/Database)
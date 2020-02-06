# Questions
- Deep dive into DB[:conn] and this connection
- Pulling the Id from a table and storing as a data point in ruby
- Certain methods (name:, grade:) -> mass assignment
- Rake tasks
- Outline of files structors and order

module SQLite
class Database
end 

class Pragma
end

class Exception
end
end
# ORM (Object Relational Mapping)
- 
### SWBATs
* Define Object Relational Mapper \(ORM\)
* Distinguish between ORM and SQL
* Demonstrate that ORMs are the pattern connecting scripting languages and databases
* Explain how the `sqlite` gem works as a driver or wrapper around SQL
* Implement HEREDOCs to be saved in variables to be executed by SQL driver
* Perform persistent CRUD actions on two separate models

### App Demo and Structure
* demo current app
* little bit of file structure and bundler review
* SQLite3 gem is giving you code to interact with SQLite3 database
* Creating rake tasks
* Environment file
* Gemfile
* Run file

### Define User Stories for our app
- As a user, I want to be able to register to the Jurassic Park.
- As a user, I want to change my name.
- As a user, I want to be able to leave a park.
- As a user, I want to be able to add a dinosaur to the park.
- As a user, I want to be able to change the height of a dinosaur.
- As a user, I want to remove a dinosaur from the park since it is dangerous.
- As a user, I want to be able to eat some food.
- As a user, I want to be able to visit and see a dinosaur.



```SQL
#SEED DATA 
    DB.execute("CREATE TABLE dinosaurs(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, height INTEGER)")
    DB.execute("CREATE TABLE visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, height INTEGER)")
    DB.execute("CREATE TABLE dinosaurs_visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, dinosaur_id INTEGER, visitor_id INTEGER)")
    DB.execute("CREATE TABLE foods(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)")
    DB.execute("CREATE TABLE foods_visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, food_id INTEGER, visitor_id INTEGER)")

    DB.execute("INSERT INTO visitors(name, age, height) VALUES(?,?,?)", Faker::FunnyName.name, Random.rand(100), Random.rand(6.0) )

    DB.execute("INSERT INTO dinosaurs(name, age, height) VALUES(?,?,?)", dino_name,Random.rand(100000000), Random.rand(100.00) )

    DB.execute("INSERT INTO foods(name) VALUES(?)", food_name)

```

# Reference : 
[SQLite Doc](https://www.rubydoc.info/github/luislavena/sqlite3-ruby/SQLite3/Database)
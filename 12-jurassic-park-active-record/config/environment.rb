require 'bundler'
Bundler.require

require_all 'models'

# DB = SQLite3::Database.new("jurassic_park.db")
# DB.results_as_hash = true

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: "db/jurassic_park.db"
)

# ActiveRecord::Base.establish_connection(
#     adapter: 'sqlite3',
#     database: 'db/pokemon.db'
#   )
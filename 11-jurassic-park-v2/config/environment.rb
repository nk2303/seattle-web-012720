require 'bundler'
Bundler.require

require_all 'models'

DB = SQLite3::Database.new("jurassic_park.db")
DB.results_as_hash = true
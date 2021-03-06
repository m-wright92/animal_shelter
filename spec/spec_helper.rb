require 'rspec'
require 'pry'
require 'pg'
require 'animal'
require 'customer'
require 'owner'

DB = PG.connect({:dbname => 'animal_shelter_test'})

RSpec.configure do |config|
  config.before(:each) do
    DB.exec('DELETE FROM animals *;')
    DB.exec('DELETE FROM customers *;')
    DB.exec('DELETE FROM owners *;')
  end
end
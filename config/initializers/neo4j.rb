require 'neo4j_ruby_driver'

# Initialize the Neo4j Ruby Driver
Neo4j::Driver.configure do |config|
  config.bolt.uri = 'bolt://localhost:7687'
  config.bolt.username = 'neo4j'
  config.bolt.password = 'mysecret'
end

require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'alexlin',
  :password => '',
  :database => 'potluck',
  :encoding => 'utf8'
)

require_relative "models/person"
require_relative "models/potluck"
require_relative "models/item"
require_relative "models/tag"

require_relative "controllers/people"
require_relative "controllers/potlucks"
require_relative "controllers/items"
require_relative "controllers/tags"

get "/" do
  @people = Person.all
  @potlucks = Potluck.all
  @items = Item.all
  @tags = Tag.all

  erb :index
end
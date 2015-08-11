# requiring the Sinatra gem in here so we can use it
require "sinatra"
require "faker"

# GET is the HTTP verb
# "/" is the URL > Home Page
# "Hello CodeCore Students" is the response we're sending back"
get "/" do
  # this will render the file index.erb located inside the views folder
  erb :index, layout: :application
end

get "/contact" do
  @name = "Bryan"
  @title = "Contact Us"
  erb :contact, layout: :application
end

get "/about" do
  "This is my first Sinatra application"
end

get "/random" do
  @title = "Random"
  # erb(:random, {layout: :application})
  erb :random, layout: :application
end

post "/random" do
  @title = "Random"
  @random = rand(100).to_s
  erb :random, layout: :application
end

get "/randombs" do
  @header = "Random Corporate BS"
  erb :randombs, layout: :application
end

post "/randombs" do
  @header = "Random Corporate BS"
  @randombs = Faker::Company.bs
  erb :randombs, layout: :application
end

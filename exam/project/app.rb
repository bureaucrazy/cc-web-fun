require "sinatra"
require "data_mapper"

# Create the database.
DataMapper.setup(:default, "sqlite://#{Dir.pwd}/data.db")

use Rack::MethodOverride

enable :sessions

# For http authentication.
helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||= Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end

# Create table to store ratings.
class Rate
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :email, String
  property :design, Integer
  property :content, Integer
  property :speed, Integer
  property :overall, Integer
end

Rate.auto_upgrade!

get "/" do
  erb :index, layout: :application
end

get "/rate" do
  erb :rate, layout: :application
end

get "/results" do
  protected!

  @scores = Rate.all
  @hiscore = Rate.all(:overall.gte => 3)
  @loscore = Rate.all(:overall.lt => 3)
  erb :results, layout: :application
end

post "/rate" do
  Rate.create({name: params[:name],
                  email: params[:email],
                  design: params[:design],
                  content: params[:content],
                  speed: params[:speed],
                  overall: params[:overall]})

  "Thank you #{params[:name]} for the rating. An email has been sent to #{params[:email]}."
end

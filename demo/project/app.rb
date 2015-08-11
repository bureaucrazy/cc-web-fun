require "sinatra"
require "data_mapper"

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/data.db")

use Rack::MethodOverride

# this will enable to use sessions in the application
enable :sessions

# Adds basic authentication to a page.
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

class Suppliers
  include DataMapper::Resource
  property :supplier_id, Serial
  property :supplier_name, String, :length => 100
  property :supplier_tin, Integer

  # has n, :Supplier_Details
end

class Supplier_Details
  include DataMapper::Resource
  property :supplier_id, Serial
  property :supplier_address, String, :length => 100
  property :supplier_web, String
  property :supplier_phone, String
  property :supplier_fax, String
  property :supplier_email, String
  property :supplier_notes, Text

  # belongs_to :Suppliers
end

class Orders
  include DataMapper::Resource
  property :order_id, Serial
  property :supplier_id, Integer, :key => true
  property :user_id, Integer, :key => true
  property :order_invoice_no, Integer
  property :order_date, String

  # has n, :Order_Details, :child_key => [:order_id]
  # belongs_to :Suppliers, :child_key => [:supplier_id]
  # belongs_to :Users, :child_key => [:user_id]
end

class Order_Details
  include DataMapper::Resource
  property :order_id, Serial
  property :product_id, Integer, :key => true
  property :order_qty, Integer
  property :order_price, Integer

  # belongs_to :Orders
  # belongs_to :Products
end

class Products
  include DataMapper::Resource
  property :product_id, Serial
  property :product_sku, String
  property :product_upc, String

  # has n, :Product_Details
  # has n, :Order_Details
end

class Product_Details
  include DataMapper::Resource
  property :product_id, Serial
  property :product_name, String, :length => 100
  property :product_desc, String, :length => 100
  property :product_category, String
  property :product_cost, Integer

  # belongs_to :Products
end

class Sales
  include DataMapper::Resource
  property :sale_id, Serial
  property :customer_id, Integer, :key => true
  property :user_id, Integer, :key => true
  property :sale_invoice_no, Integer
  property :sale_date, String

  # has n, :Sale_Details, :child_key => [:sale_id]
  # belongs_to :Customers, :child_key => [:customer_id]
  # belongs_to :Users, :child_key => [:user_id]
end

class Sale_Details
  include DataMapper::Resource
  property :sale_id, Serial
  property :product_id, Integer, :key => true
  property :sale_qty, Integer
  property :sale_price, Integer

  # belongs_to :Sales
  # belongs_to :Products
end

class Customers
  include DataMapper::Resource
  property :customer_id, Serial
  property :customer_name, String, :length => 100

  # has n, :Customer_Details
  # has n, :Sales
end

class Customer_Details
  include DataMapper::Resource
  property :customer_id, Serial
  property :customer_address, String, :length => 100
  property :customer_web, String
  property :customer_phone, String
  property :customer_fax, String
  property :customer_email, String
  property :customer_notes, Text

  # belongs_to :Customers
end

class Users
  include DataMapper::Resource
  property :user_id, Serial
  property :user_name, String,   :required => true
  property :user_pass, String,   :required => true

  # has n, :Users
  # has n, :Orders
  # has n, :Sales
end

class User_Details
  include DataMapper::Resource
  property :user_id, Serial
  property :user_dept, String

  # belongs_to :Users
end

Suppliers.auto_upgrade!
Supplier_Details.auto_upgrade!
Orders.auto_upgrade!
Order_Details.auto_upgrade!
Products.auto_upgrade!
Product_Details.auto_upgrade!
Sales.auto_upgrade!
Sale_Details.auto_upgrade!
Customers.auto_upgrade!
Customer_Details.auto_upgrade!
Users.auto_upgrade!
User_Details.auto_upgrade!

get "/" do
  erb :index, layout: :application
end

get "/customers" do
  @customers = Customers.all
  erb :customers, layout: :application
end

get "/customers/:customer_id" do |id|
  @customers = Customers.get(customer_id)
  @customer_details = Customer_Details.get(customer_id)
  erb :customers, layout: :application
end

get "/orders" do
  erb :orders, layout: :application
end

get "/products" do
  erb :products, layout: :application
end

get "/sales" do
  erb :sales, layout: :application
end

get "/suppliers" do
  erb :suppliers, layout: :application
end

get "/users" do
  erb :users, layout: :application
end

require "sinatra"

get "/" do
  erb :index, layout: :application
end

get "/fizzbuzzagain" do
  erb :fizzbuzzagain, layout: :application
end

post "/fizzbuzzagain" do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  @output = []

  if num1 == 0 || num2 == 0
    @output = "Invalid input detected."
  else
    for n in 1..100
      case
      when n % (num1*num2) == 0
        @output << "FIZZBUZZ"
      when n % num1 == 0
        @output << "FIZZ"
      when n % num2 == 0
        @output << "BUZZ"
      else
        @output << n
      end
    end
  end

  erb :fizzbuzzagain, layout: :application
end

get "/carstatus" do
  erb :carstatus, layout: :application
end

post "/carstatus" do
  year = params[:year].to_i
  case year
  when 2015..2016 then @output = "New"
  when 2004..2014 then @output = "Old"
  when 0..2003 then @output = "Very old"
  else
    @output = "Future"
  end
  erb :carstatus, layout: :application
end

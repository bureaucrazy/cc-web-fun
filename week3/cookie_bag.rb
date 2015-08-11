class CookieBag
  
  def initialize
    @bag=[]
  end

  def add_to_bag(cookie)
    @bag << cookie
  end

  def remove_from_bag
    @bag.pop
  end

  def details
    puts "This is a cookie bag with #{@bag.count} cookies."
  end
end

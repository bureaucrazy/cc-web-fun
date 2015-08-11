class Dog
  attr_accessor :color
  attr_accessor :type
  attr_accessor :plate

  def initialize(color = "white", type = "husky")
    @color = color
    @type = type
    @plate = []
  end

  def give(bone)
    if @plate.count < 3
      @plate << bone
      puts "Woof!"
    else
      puts "I have too many bones."
    end
  end

  def eat
    if @plate.count > 0
      puts "Yummy, I ate a #{@plate.last.size} bone."
      @plate.pop
    else
      puts "I don't have any bones to eat."
    end
  end
end

class Car
  def initialize(model, type, capacity)
    @model = model
    @type = type
    @capacity = capacity
    # Below is another way of writing the variable definitions from above.
    #@model, @type, @capacity = model, type, capacity

    # Below is a global variable, but hardly recommended to use
    #$my_variable = "blah"

    # Below is a class variable, shared between instance of classes.
    #@@color = "brown"
  end

  def self.max_speed
    puts 200
  end

  def drive
    ignite_engine
    puts "Full speed ahead!"
  end

  def stop
    puts "Screeeeeeach!"
  end

  def park
    puts "Let's park."
  end

  private

  def pump_gas
    puts "Squirt! Squirt!"
  end

  def ignite_engine
    puts "KAA-BOOOM!"
  end
end

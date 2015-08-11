class Cat
  attr_reader :size

  def initialize(size=5)
    @hungry_cat = []
    @size = size
  end

  def catch(bird)
    if rand(size) >= bird.size
      @hungry_cat << bird
      puts "Successfuly caught a #{bird.color} bird."
    else
      puts "Failed to catch."
    end
  end

  def details
    print "It's a ", size > 5 ? "big":"small", " cat that has ate #{@hungry_cat.count} poor birds."
  end
end

class Bird
  attr_reader :size
  attr_reader :wild
  attr_reader :color

  def initialize(size=1,wild=true,color="brown")
    @size = size
    @wild = wild
    @color = color
  end

  def details
    print "It's a ", wild ? "wild" : "domestic"
    print " #{color} bird. Size = #{size}."
  end
end

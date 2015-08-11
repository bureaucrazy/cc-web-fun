class Rectangle
  attr_accessor :width
  attr_accessor :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    # we can use the width and height in this case because these are
    # methods that got defined by attr_accessor :width and attr_accessor :height
    # the attr_accessor define a a GETTER and a SETTER (reader and writer)
    # which are public methods, so we're able to access them in here.
    # Using @width and @height works as well. The width / height approach is
    # preferrable (Best practice)
    width * height
  end
end

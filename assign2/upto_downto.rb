# Write the numbers from 15 to 50 using upto.
# Write the letters from "O" to "B" using downto.

# No problem here.
print 15.upto(50).map {|x| x}

# No problem here also, but there's no downto for string.
print "B".upto("O").map {|x| x}

# Solution 1: convert letter to character code integer for
# use with downto method and convert result back to character.
print "O".ord.downto("B".ord).map {|x| x.chr}

# Solution 2: create your own downto method.
class String
  def downto value
    x = value.upto self
    x.to_a.reverse.each
  end
end
print "O".downto("B").map {|x| x}

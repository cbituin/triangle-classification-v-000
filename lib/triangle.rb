require 'pry'

class Triangle

  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(sideone, sidetwo, sidethree)
    @sideone = sideone
    @sidetwo = sidetwo
    @sidethree = sidethree
  end
  
  def kind
<<<<<<< HEAD
    triangle = [@sideone, @sidetwo, @sidethree]
=======
    @triangle = [@sideone, @sidetwo, @sidethree]
>>>>>>> 5ed0bebbf3b5a619577978eb22e51adfcc10877e
    counts = Hash.new 0
    @triangle.each { |length| 
    counts[length] += 1 }
    
    
# binding.pry
      if counts.value?(3) && countsValid(counts) 
        :equilateral
      elsif counts.value?(2) && countsValid(counts) 
        :isosceles
      elsif counts.value?(1) && countsValid(counts) 
        :scalene
      else
        begin
          raise TriangleError
        rescue TriangleError => error
          puts error.message
        end
      end
    end

  
  def countsValid(hash)
<<<<<<< HEAD
    hash.keys.all? {|side| side > 0}
=======
    hash.keys.none? {|side| side <= 0}
>>>>>>> 5ed0bebbf3b5a619577978eb22e51adfcc10877e
  end
  
  class TriangleError < StandardError
    def message
      "This ain't no Triangle! I pity the fool!"
    end
  end

end

class Triangle
  def initialize(a,b,c)
    @a = a 
    @b = b
    @c = c
    @sides = [a, b, c]
  end 
  
<<<<<<< HEAD
  def kind 
    if @sides.detect{|side| side <= 0} 
      raise TriangleError
    elsif @sides.length < 3 
      raise TriangleError
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a 
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral 
    elsif @sides.uniq.length == 2 
      :isosceles 
    else 
      :scalene 
=======
  def pythagorean(a,b,c)
    a^2 + b^2 == c^2
  end 
    
  
  def kind 
    if @sides.uniq.length == 1
      :equilateral 
    elsif @sides.uniq.length == 2 
      :isosceles 
    elsif pythagorean(@a,@b,@c)
      :scalene
    elsif !pythagorean(@a,@b,@c) 
      begin 
      raise Triangle::TriangleError
      rescue Triangle::TriangleError => error 
      puts error.message
    end
>>>>>>> 67ba593bd7e74a429c5fdc7dd198e7b68c9a97bd
    end 
  end 
end 

class TriangleError < 
  StandardError
  def initialize 
  end 
  def message  
    puts "wrong"
  end 
end 

class Player 
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def alive?
   if @lives > 0
    return true
   else 
    return false
   end
  end 
  end 


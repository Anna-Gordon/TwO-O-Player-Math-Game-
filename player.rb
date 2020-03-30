class Player
  MAX_NUMBER_OF_LIVES = 3

  def initialize
    @lives = MAX_NUMBER_OF_LIVES
  end

  def is_alive?
    @lives > 0
  end 

  def wrong_answer
    @live -= 1
  end

  def correct_answer
    @lives
  end

  def print_status
    puts "#{@lives}/#{MAX_NUMBER_OF_LIVES}"
  end
end   
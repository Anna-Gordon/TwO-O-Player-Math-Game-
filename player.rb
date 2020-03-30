class Player
  MAX_NUMBER_OF_LIVES = 3
  attr_accessor :lives

  def initialize
    @lives = MAX_NUMBER_OF_LIVES
  end

  def wrong_answer
    @lives -= 1
  end

  def correct_answer
    @lives
  end

  def print_status
    "#{@lives}/#{MAX_NUMBER_OF_LIVES}"
  end
end   

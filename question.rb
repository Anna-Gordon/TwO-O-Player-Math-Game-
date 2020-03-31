class Question

  def initialize 
    @num1 
    @num2 
    @player_num
  end

  def player_num
    @player_num = @player_num == 1 ? 2 : 1
  end

  def print_question
    @num1 = pick_random_num
    @num2 = pick_random_num
    puts "Player #{player_num}: What does #{@num1} plus #{@num2} equal?"
  end 

  def correct_answer
    answer = @num1 + @num2
  end

  def pick_random_num
    rand(20)
  end

end

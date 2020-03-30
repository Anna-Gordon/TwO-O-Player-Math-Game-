class Question

  def initialize 
    @num1 
    @num2 
  end

  def print_question
    @num1 = pick_random_num
    @num2 = pick_random_num
    puts "What does #{@num1} plus #{@num2} equal?"
  end 

  def correct_answer
    wright_answer = @num1 + @num2
  end

  def pick_random_num
    rand(20)
  end

end

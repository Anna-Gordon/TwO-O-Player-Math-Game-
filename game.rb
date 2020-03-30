class Game
  MAX_PLAYERS = 2

  def initialize 
    @question = Question.new
    @player = Player.new
    start_game
  end

  def start_game
      @question.print_question
      answer = take_player_input

      if answer == @question.correct_answer
        puts "YES! You are correct."
      else
        puts "Seriously? No!"
        @player.print_status
      end
  end
  
  def take_player_input
    print "> "
    gets.chomp.to_i
  end

end

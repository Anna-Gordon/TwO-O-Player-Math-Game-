class Game

  def initialize 
    @question = Question.new
    @player1 = Player.new
    @player2 = Player.new
    @current_player = @player1
    start_game
  end

  def status
    puts "P1: #{@player1.print_status} vs P2: #{@player2.print_status}"
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1  
  end

  def start_game
    while @current_player.lives > 0 
      @question.print_question
      answer = take_player_input

      if answer == @question.correct_answer
        puts "YES! You are correct."
        status
        switch_player
      else
        puts "Seriously? No!"
        @current_player.wrong_answer
        if @current_player.lives == 0
          game_over
        else
          status
          switch_player
        end
      end
    end
  end

  def game_over
    if @current_player.lives == 0
      puts "Good bye!"
    end
  end 
  
  def take_player_input
    print "> "
    gets.chomp.to_i
  end

end

